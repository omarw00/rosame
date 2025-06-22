import torch
from models.rosame import *
from models.cv_gridworld import *
import os
from data.dataset import *


def to_pddl(model_file_path, write_pddl_to,domain):
    # Load the domain model
    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    
    # Load the domain model structure from JSON
    domain_model = load_model(
        os.path.join(
            os.path.dirname(__file__), "models/domains", domain, "domain_model.json"
        ),
        device,
    )
    domain_model.ground_from_json(
        os.path.join(
            os.path.dirname(__file__), "models/domains", domain, "objects.json"
        )
    )

    # Load the state dictionary from the .pth file
    state_dict = torch.load(model_file_path)
    domain_model.load_state_dict(state_dict["domain_model"])
    pddl = ""
    pddl = head_pddl("gripper-strips",domain_model)
    for schema in domain_model.action_schemas:
      pre,add,dell,params = schema.pretty_print()
      pddl += action_pddl(schema,pre,add,dell,params)
      print("----------------------------")
    pddl += ")"

    # create and write to pddl file
    with open(write_pddl_to,"w") as f:
        f.write(pddl)
    print(f"PDDL content successfully written to {write_pddl_to}")

def action_pddl(schema,pre,add,delete,params):
    action_str = f"(:action {schema.name}\n"
    parameters = f"  :parameters ("
    param_str = ""
    for type,p in params.items():
        for param in p:
            param_str += f"?{param} - {type.name} "
    parameters += param_str[:-1] + ")\n"

    preconditions = f"  :precondition (and"
    effects = f"  :effect (and"
    for precon in pre:
        cond = precon.split(" ")
        if len(cond) > 1:
            pre_str = f" ({cond[0]}"
            for i in range(1,len(cond)):
                if i % 2 == 0:
                    pre_str += f' ?{cond[i]}'
            pre_str += ")"
        else:
            pre_str = f" ({cond[0]})"

        preconditions += pre_str
    preconditions += ")\n"

    for addeff in add:
        cond = addeff.split(" ")
        if len(cond) > 1:
            add_str = f" ({cond[0]}"
            for i in range(1,len(cond)):
                if i % 2 == 0:
                    add_str += f' ?{cond[i]}'
            add_str += ")"
        else:
            add_str = f" ({cond[0]})"
        effects += add_str

    for deleff in delete:
        cond = deleff.split(" ")
        if len(cond) > 1:
            del_str = f" (not ({cond[0]}"
            for i in range(1,len(cond)):
                if i % 2 == 0:
                    del_str += f' ?{cond[i]}'
            del_str += "))"
        else:
            del_str = f" (not ({cond[0]}))"
        effects += del_str
    effects += "))\n\n"
    return action_str + parameters + preconditions + effects

def head_pddl(domain_name,domain):
    define = f"(define (domain {domain_name}-4ops)\n" # remove "-4ops"
    req_str = ""
    if domain_name == "blocksworld" or domain_name == 'hanoi':
        req_str = "(:requirements :strips :equality)\n"
    elif domain_name == "gripper-strips":
        req_str = "(:requirements :adl :equality)\n"

    types = f"(:types"
    typedic = {}
    for type in domain.types:
        if type.parent != None:
            if type.parent in typedic:
                typedic[type.parent] += " " + type.name
            else:
                typedic[type.parent] = type.name
        else:
            types += f" {type.name}"
    for p, t in typedic.items():
        types += "\n " + t + " - " + p.name
    types += ")\n"

    predicates = f'(:predicates'
    pred_str = ""
    for pred in domain.predicates:
        j = 0
        pred_str = f' ({pred.name}'
        for type, num in pred.params.items():
            for _ in range(num):
                pred_str += f" ?{chr(j + 97)} - {type.name}"
                j += 1
        predicates += pred_str + ")"
    predicates += ")\n\n"
    return define + req_str + types + predicates


# # Example
# for data in [50,100,200,300,400]:
#     model_file_path = f'model_paths/slide_{data}_model.pth'
#     to_pddl(model_file_path,f"final_domains/CV/rosame/slide/{data}_domain.pddl","8-puzzle")
# model_file_path = f'model_paths/slide_model.pth'
# to_pddl(model_file_path,f"final_domains/CV/rosame/slide/max_domain.pddl",'8-puzzle')
from data.dataset import *

def get_domain_model(domain, device):
# Load the domain model
    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")

    # Load the domain model structure from JSON
    domain_model = load_model(
        os.path.join(
            os.path.dirname(__file__), "models/domains", domain, "domain_model.json"
        ),
        device,
    )
    domain_model.ground_from_json(
        os.path.join(
            os.path.dirname(__file__), "models/domains", domain, "objects.json"
        )
    )
    return domain_model


for name in ["grid_logistics"]:
    if name == "grid_blocks" or name == 'grid_logistics' or name == 'synth_blocks':
        step = 10
    else:
        step = 5

    # for data in [50,100,200,300,400]:

    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    if name == "grid_blocks":
        model_path = f'model_paths/blocks_grid_model.pth'
        dataset_path = f'data/blocks_grid'
        block_num = 5
        domain_model = get_domain_model("blocks", device)
        cv_model = CVGrid(
            GridConv(digit_class_num=block_num + 1, input_channel=1),
            block_dim=(block_num + 1, block_num),
            block_size=28,  # MNIST images are 28x28
            hidden_dim=128,
            digit_class_num=block_num + 1,
            prop_dim=len(domain_model.propositions),
        )
        data_transform = RearrangeColumn(block_num)
    elif name == "grid_gripper":
        model_path = f'model_paths/gripper_model.pth'
        dataset_path = f'data/gripper'
        ball_num = 6
        domain_model = get_domain_model("gripper", device)
        cv_model = CVGrid(
            GridConv(digit_class_num=(ball_num + 1) * 2, input_channel=1),
            block_dim=(4, ball_num),
            block_size=28,  # MNIST images are 28x28
            hidden_dim=128,
            digit_class_num=(ball_num + 1) * 2,
            prop_dim=len(domain_model.propositions),
        )
        data_transform = RearrangeBalls(ball_num)
    elif name == "grid_logistics":
        model_path = f'model_paths/logistics_model.pth'
        dataset_path = f'data/logistics_400'
        domain_model = get_domain_model("logistics", device)
        digit_class_num = 35
        cv_model = CVGrid(
            GridConv(digit_class_num=digit_class_num, input_channel=3),
            block_dim=(6, 6),
            block_size=28,  # MNIST images are 28x28
            hidden_dim=256,
            digit_class_num=digit_class_num,
            prop_dim=len(domain_model.propositions),
        )
        data_transform = RearrangeItems()
    elif name == "synth_blocks":
        model_path = f'model_paths/blocks_model.pth'
        dataset_path = f'data/blocks'
        domain_model = get_domain_model("blocks", device)
        cv_model = torchvision.models.resnet18()
        cv_model.fc = nn.Sequential(
            nn.Linear(512, 512),
            nn.ReLU(),
            nn.Linear(512, 256),
            nn.ReLU(),
            nn.Linear(256, len(domain_model.propositions)),
        )
        data_transform = transforms.Compose(
            [
                transforms.Resize(64),
                transforms.RandomHorizontalFlip(0.5),
            ]
        )
    elif name == "synth_hanoi":
        domain_model = get_domain_model("hanoi", device)
        cv_model = torchvision.models.resnet18()
        cv_model.fc = nn.Sequential(
            nn.Linear(512, 512),
            nn.ReLU(),
            nn.Linear(512, 256),
            nn.ReLU(),
            nn.Linear(256, len(domain_model.propositions)),
        )
        data_transform = transforms.Resize(64)
    elif name == "synth_8-puzzle":
        model_path = f'model_paths/slide_model.pth'
        dataset_path = f'data/slide'
        domain_model = get_domain_model("8-puzzle", device)
        cv_model = torchvision.models.resnet18()
        cv_model.fc = nn.Sequential(
            nn.Linear(512, 512),
            nn.ReLU(),
            nn.Linear(512, 256),
            nn.ReLU(),
            nn.Linear(256, len(domain_model.propositions)),
        )
        data_transform = transforms.Resize(64)


    # state_dict = torch.load(model_path)
    # cv_model.load_state_dict(state_dict["cv_model"])
    # cv_model.eval()
    # cv_model.to(device)
    # domain_model.to(device)
    if name.startswith("grid"):
        dataset = GridDataset(dataset_path,step,data_transform)
    else:
        dataset = SynthDataset(dataset_path,step,0,data_transform)
    triplets = []
    print(len(dataset))
    for i in range(len(dataset)):
        img,labels,actions = dataset[i]
        # probabilities = cv_model(img)

        for index in range(len(labels) - 1): # for cv change with prob.
            # state = probabilities[index].tolist()
            state = labels[index].tolist()
            action = actions[index].tolist()

            # next_state = probabilities[index+1].tolist()
            next_state = labels[index+1].tolist()
            triplet = (state, action, next_state)
            triplets.append(triplet)
        print("------------------------------")
    print(len(triplets))
    with open(f"json_files/labels/{name}.json", "w") as f:
        json.dump(triplets, f)