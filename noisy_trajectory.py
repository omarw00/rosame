import numpy as np
import torch
import os
from models.rosame import *
from data.dataset import *
from trajectory_creator import *
from sklearn.model_selection import KFold


def add_noise_to_trajectory(trajectory, epsilon):
    noisy_trajectory = []
    np.random.seed(123)
    for f in trajectory:
        if f == 0:
            f_noise =  np.random.uniform(0, epsilon)
        else: 
            f_noise = 1 - np.random.uniform(0, epsilon)
        noisy_trajectory.append(f_noise)
    return noisy_trajectory


def get_domain_model(domain, device):
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

def get_dataset(dataset_pth):
    # dataset = SynthDataset(dataset_pth,1)
    dataset = GridDataset(dataset_pth,10)
    return dataset
def get_actions_and_props(balls, rooms, grippers):
    actions = [f'move room {room_from} room {room_to}'
               for room_from in rooms
               for room_to in rooms
               if room_from!=room_to]
    actions.extend([f'pick ball {ball} gripper {gripper} room {room}'
                    for ball in balls for gripper in grippers for room in rooms])
    actions.extend([f'drop ball {ball} gripper {gripper} room {room}'
                    for ball in balls for gripper in grippers for room in rooms])
    actions = {v: k for v, k in enumerate(actions)}

    fluents = [f'(at-robby room {room})' for room in rooms]
    fluents.extend([f'(at ball {ball} room {room})' for ball in balls for room in rooms])
    fluents.extend([f'(free gripper {gripper})' for gripper in grippers])
    fluents.extend([f'(carry ball {ball} gripper {gripper})' for ball in balls for gripper in grippers])
    fluents = {k: v for v, k in enumerate(fluents)}
    return actions, fluents

def create_noisy_trajectory_tensor(dataset_pth,eps):
    # action_order, fluents = get_actions_and_props(["ball1","ball2","ball3","ball4","ball5","ball6"],["rooma","roomb"],["left","right"])
    dataset = get_dataset(dataset_pth)
    noisy_trajectories = []
    operations_lst = []
    print(len(dataset))
    for i in range(len(dataset) - 1):
        labels = dataset.labels
        print(len(labels))
        actions = dataset.actions
        # img, label, action = dataset[i]
        # print(label)
        label = labels[i]
        # print("---------")
        # print(label)
        action = actions[i].tolist()
        # new_noisy_trajectory = add_noise_to_trajectory(label.tolist(),eps)
        noisy_trajectories.append(label.tolist())
        operations_lst.append(action)
    # The last state should be from the label (without noise).
    noisy_trajectories.append(dataset.labels[-1])
    noisy_tensor = torch.tensor(noisy_trajectories)
    return noisy_tensor , operations_lst


def create_noisy_trajectory_tensor_with_cross_val(dataset_pth, eps, n_splits, th, path):
    # Load dataset
    dataset = get_dataset(dataset_pth)
    labels = dataset.labels
    actions = dataset.actions

    # Initialize cross-validation
    kf = KFold(n_splits=n_splits, shuffle=True, random_state=42)
    fold_results = {}
    fluents = []
    data = {}
    pre_states = []
    next_states = []
    action_list = []
    action = None
    # Process training data
    for i in range(len(labels) - 1):
        pre = labels[i].tolist()  # Convert to list for processing
        action = action_order[actions[i].tolist()]  # Convert action tensor to list
        next = labels[i + 1].tolist()

        # Add noise to the trajectory
        # pre_state_tensor = add_noise_to_trajectory(pre, eps)
        # pre_state = create_states_from_noisy(pre_state_tensor,th)
        # next_state_tensor = add_noise_to_trajectory(next, eps)
        # next_state = create_states_from_noisy(next_state_tensor,th)
        # triplet = (pre_state,action,next_state)
        # fluents.append(triplet)

        pre_states.append(pre)
        next_states.append(next)
        action_list.append(actions[i].tolist())
    data["pre_states"] = pre_states
    data["next_states"] = next_states
    data["actions"] = action_list

    with open("model_paths/420.json", 'w') as f:
            json.dump(data,f)
    # last_state_tensor = labels[-1].tolist()
    # last_state = create_states_from_noisy(last_state_tensor,1)
    # fluents = fluents[:-1]
    # pre_last_state =fluents[-1][0]
    # last_triplet = (pre_last_state, action,last_state)
    # fluents.append(last_triplet)
    # # fluents = np.array(fluents)
    # fold = 1
    # for train_index, val_index in kf.split(fluents):
    #     fold_results = {}
    #     train_data = [fluents[i] for i in train_index]
    #     val_data = [fluents[i] for i in val_index]
    #     fold_results["data"] = train_data
    #     fold_results["val"] = val_data

    #     with open(path + f"_{fold}.json",'w') as f:
    #         json.dump(fold_results,f)
    #     fold += 1
    # # Convert noisy trajectories to a tensor
    # noisy_tensor = torch.tensor(noisy_trajectories, dtype=torch.float32)

    # # Collect validation set (unchanged)
    # val_labels = [labels[i].tolist() for i in val_idx]
    # val_actions = [actions[i].tolist() for i in val_idx]

    # # Store results for this fold
    # fold_results.append({
    #     "fold": fold + 1,
    #     "noisy_tensor": noisy_tensor,
    #     "operations_lst": operations_lst,
    #     "val_labels": val_labels,
    #     "val_actions": val_actions
    # })

    # return fold_results

def create_states_from_noisy(noisy_tensor,th):
    if th == 1:
        predicates = [index for index, value in enumerate(noisy_tensor) if value == 1] ## propositoins[index]
    else:
        preds = []
        for ind, val in enumerate(noisy_tensor):
            if val > th:
                preds.append(propositions[ind])
        predicates = [propositions[index] for index, value in enumerate(noisy_tensor) if value > th]
    return predicates

def create_noisy_trajectories(dataset_path, th, eps, write_path, write_path_high):
    # create_noisy_trajectory_tensor_with_cross_val(dataset_path,eps,5,th,write_path)
    # create_noisy_trajectory_tensor_with_cross_val(dataset_path,eps,5,1 - th,write_path_high)
    noisy_tensor , operations_lst = create_noisy_trajectory_tensor(dataset_path,eps)
    states = []
    # for state in noisy_tensor:
    #     states.append(create_states_from_noisy(state,th))
    # high_states = create_states_from_noisy(fold_res["noisy_tensor"], 1-th)
    create_trajectory(operations_lst,states, "/Users/omarwattad/Documents/Action Model - Research/sam_learning/Non_I_ROSAME_domains/label_trajectories/10.trajectory")
    # create_trajectory(fold_res["operation_lst"],high_states,write_path_high)
    create_problem(states,"/Users/omarwattad/Documents/Action Model - Research/sam_learning/Non_I_ROSAME_domains/label_problem/prob_10.pddl")
    # create_problem(high_states,problem2_pth)
    
def labels_lst(dataset_pth,data_num,eps):
    # Load dataset
    dataset = get_dataset(dataset_pth)
    # labels = dataset.images
    img, _, action = dataset[0]
    actions = dataset.actions

    # Initialize cross-validation
    data = {}
    pre_states = []
    next_states = []
    action_list = []
    action = None
    # Process training data
    for i in range(len(labels) - 1):
        for step in range(traj_len):

        pre = labels[i].tolist()  # Convert to list for processing
        action = action_order[actions[i].tolist()]  # Convert action tensor to list
        next = labels[i + 1].tolist()

        # Add noise to the trajectory
        # pre_state_tensor = add_noise_to_trajectory(pre, eps)
        # pre_state = create_states_from_noisy(pre_state_tensor,th)
        # next_state_tensor = add_noise_to_trajectory(next, eps)
        # next_state = create_states_from_noisy(next_state_tensor,th)
        # triplet = (pre_state,action,next_state)
        # fluents.append(triplet)

        pre_states.append(pre)
        next_states.append(next)
        action_list.append(actions[i].tolist())
    data["pre_states"] = pre_states
    data["next_states"] = next_states
    data["actions"] = action_list

    with open(f"/Users/omarwattad/Documents/Action Model - Research/sam_learning/labeled_data/{data_num}.json",'w') as f:
            json.dump(data,f)
labels_lst(f"data/blocks_grid",8000,0)
# with open("160_noisy.json","r") as f:
#     data = json.load(f)
# pre = data["pre_states"] + [data["next_states"][-1]]
# actions = []
# states = []
# for state in pre:
#     states.append(create_states_from_noisy(state,1))

# for action in data["actions"]:
#     actions.append(action_order[action])
# create_trajectory(actions,states, "/Users/omarwattad/Documents/Action Model - Research/sam_learning/Non_I_ROSAME_domains/label_trajectories/10.trajectory")
# # create_trajectory(fold_res["operation_lst"],high_states,write_path_high)
# create_problem(states,"/Users/omarwattad/Documents/Action Model - Research/sam_learning/Non_I_ROSAME_domains/label_problem/prob_10.pddl")
# create_noisy_trajectories("data/blocks_10",1,0,"","")
# for data in [5]:
#     labels_lst(f"data/blocks_{data}",data)







# for data in [160,250,400,420]:
#     for threshold in [0.1,0.2,0.3]:
#         for eps in [0.2,0.3,0.50,0.75,0.9,1]:
#             print(eps)
#             create_noisy_trajectories(f"data/blocks_{data}",threshold,eps,f"/Users/omarwattad/Documents/Action Model - Research/sam_learning/noisy_5fcv/noisy_trajectories/{data}/{threshold}/{eps}",f"/Users/omarwattad/Documents/Action Model - Research/sam_learning/noisy_5fcv/noisy_trajectories/{data}/{1-threshold}/{eps}")

