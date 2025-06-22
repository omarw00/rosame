from scipy.stats import logistic

from models.rosame import *
import numpy as np
import numpy.random as npr
import random

import torch
import torch.nn as nn
import torch.optim as optim
import torch.nn.functional as F
from torch.utils.data import TensorDataset, DataLoader, random_split

import matplotlib.pyplot as plt

import torchvision
import torchvision.datasets as datasets

import itertools
import math
import string
import os

from macq import generate, extract
from macq.observation import IdentityObservation, AtomicPartialObservation

def tojson(steps_state1_tensor,steps_action_tensor,steps_state2_tensor):
    # Assume the tensors are already converted to lists
    triplets = []
    steps_state1 = steps_state1_tensor
    steps_state2 = steps_state2_tensor
    steps_action = steps_action_tensor

    # Create triplets from the data
    for index in range(len(steps_state1)):
        triplet = (steps_state1[index], steps_action[index], steps_state2[index])
        triplets.append(triplet)

    # Write to JSON file
    output_path = "/Users/omarwattad/Documents/Action Model - Research/rosame/json_files/labels/rovers.json"
    with open(output_path, "w") as f:
        json.dump(triplets, f)

    print(f"Data successfully written to {output_path}")

# tojson(steps_state1_tensor,steps_action_tensor,steps_state2_tensor)


""" Build Model """
### LOGISTICS
def logs():
    base = Type("object", None)
    movable = Type("movable", base)
    location = Type("location", base)
    city = Type("city", base)
    obj = Type("obj", movable)
    transport = Type("transport", movable)
    truck = Type("truck", transport)
    airplane = Type("airplane", transport)
    airport = Type("airport", location)

    model = Domain_Model([base,movable,location,city,obj,transport,truck,airplane,airport],[
                            Predicate('at', {movable:1, location: 1}),
                            Predicate('in', {obj:1, transport:1}),
                            Predicate('in-city', {location:1, city:1}),],
                         [
                            Action_Schema('load-truck', {obj:1, truck:1, location:1}),
                            Action_Schema('load-airplane', {obj:1, airplane:1, airport:1}),
                            Action_Schema('unload-truck', {obj:1, truck:1, location:1}),
                            Action_Schema('unload-airplane', {obj:1, airplane:1, airport:1}),
                            Action_Schema('drive-truck', {truck:1, location:2, city:1}),
                            Action_Schema('fly-airplane', {airplane:1, airport:2})
                         ], device="cpu")

    objects = {
        location: [
            "city1-1",
            "city2-1"
        ],
        city: [
            "city1",
            "city2"
        ],
        obj: [
            "package1",
            "package2",
            "package3",
            "package4",
            "package5",
            "package6"
        ],
        truck: [
            "truckred",
            "trucklime"
        ],
        airplane: [
            "planeblue",
            "planeyellow"
        ],
        airport: [
            "city1-2",
            "city2-2"
        ]
    }
    model.ground(objects)
    all_grounded_actions = {}
    for action_schema in model.action_schemas:
        obj_lists_per_params = {params_type:[] for params_type in action_schema.params_types}
        for params_type in action_schema.params_types:
            for obj_type in objects.keys():
                if obj_type.is_child(params_type):
                    obj_lists_per_params[params_type].extend(objects[obj_type])
        for obj_list in itertools.product(*[itertools.permutations(obj_lists_per_params[params_type], action_schema.params[params_type])\
                                              for params_type in action_schema.params_types]):
            objects_per_action = {}
            constructed = action_schema.name + ' ' + ' '.join([f'{action_schema.params_types[i].name} '
                                                               +f' {action_schema.params_types[i].name} '.join(obj_list[i])
                                                               for i in range(len(obj_list))])
            all_grounded_actions[constructed] = len(all_grounded_actions)
    return model

def gripper():
    ### GRIPPER
    base = Type("object", None)
    room = Type("room", base)
    ball = Type("ball", base)
    gripper = Type("gripper", base)
    model = Domain_Model([base,room,ball,gripper],[
                            Predicate('at-robby', {room:1}),
                            Predicate('at', {ball:1, room:1}),
                            Predicate('free', {gripper:1}),
                            Predicate('carry', {ball:1, gripper:1}),],
                         [
                            Action_Schema('move', {room:2}),
                            Action_Schema('pick', {ball:1, room:1, gripper:1}),
                            Action_Schema('drop', {ball:1, room:1, gripper:1}),
                         ], device='cpu')
    objects = {
        room: ['rooma', 'roomb'],
        ball: ['ball1', 'ball2', 'ball3', 'ball4', 'ball5', 'ball6'],
        gripper: ['left', 'right']
    }
    model.ground(objects)
    all_grounded_actions = {}
    for action_schema in model.action_schemas:
        obj_lists_per_params = {params_type:[] for params_type in action_schema.params_types}
        for params_type in action_schema.params_types:
            for obj_type in objects.keys():
                if obj_type.is_child(params_type):
                    obj_lists_per_params[params_type].extend(objects[obj_type])
        for obj_list in itertools.product(*[itertools.permutations(obj_lists_per_params[params_type], action_schema.params[params_type])\
                                              for params_type in action_schema.params_types]):
            objects_per_action = {}
            constructed = action_schema.name + ' ' + ' '.join([f'{action_schema.params_types[i].name} '
                                                               +f' {action_schema.params_types[i].name} '.join(obj_list[i])
                                                               for i in range(len(obj_list))])
            all_grounded_actions[constructed] = len(all_grounded_actions)
    return model

    ### BLOCKS
def blocks():
    obj = Type("object", None)
    model = Domain_Model(
        [
            Predicate('arm-empty', {}),
            Predicate('clear', {obj:1}),
            Predicate('on-table', {obj:1}),
            Predicate('holding', {obj:1}),
            Predicate('on', {obj:2}),
        ],
        [
            Action_Schema('pickup', {obj:1}),
            Action_Schema('putdown', {obj:1}),
            Action_Schema('stack', {obj:2}),
            Action_Schema('unstack', {obj:2}),
        ]
    , device="cpu")
    objects = {obj: ['a', 'b', 'c', 'd', 'e']}
    model.ground(objects)
    all_grounded_actions = {}
    for action_schema in model.action_schemas:
        obj_lists_per_params = {params_type:[] for params_type in action_schema.params_types}
        for params_type in action_schema.params_types:
            for obj_type in objects.keys():
                if obj_type.is_child(params_type):
                    obj_lists_per_params[params_type].extend(objects[obj_type])
        for obj_list in itertools.product(*[itertools.permutations(obj_lists_per_params[params_type], action_schema.params[params_type])\
                                              for params_type in action_schema.params_types]):
            objects_per_action = {}
            constructed = action_schema.name + ' ' + ' '.join([f'{action_schema.params_types[i].name} '
                                                               +f' {action_schema.params_types[i].name} '.join(obj_list[i])
                                                               for i in range(len(obj_list))])
            all_grounded_actions[constructed] = len(all_grounded_actions)
    return model

### ROVERS
def rovers():
    ## remember to generate from 98 !!!!!
    base = Type("object", None)
    rover = Type("rover", base)
    waypoint = Type("waypoint", base)
    store = Type("store", base)
    camera = Type("camera", base)
    mode = Type("mode", base)
    lander = Type("lander", base)
    objective = Type("objective", base)

    # Define the predicates
    predicates = [
        Predicate("at", {rover: 1, waypoint: 1}),
        Predicate("at_lander", {lander: 1, waypoint: 1}),
        Predicate("can_traverse", {rover: 1, waypoint: 2}),
        Predicate("equipped_for_soil_analysis", {rover: 1}),
        Predicate("equipped_for_rock_analysis", {rover: 1}),
        Predicate("equipped_for_imaging", {rover: 1}),
        Predicate("empty", {store: 1}),
        Predicate("have_rock_analysis", {rover: 1, waypoint: 1}),
        Predicate("have_soil_analysis", {rover: 1, waypoint: 1}),
        Predicate("full", {store: 1}),
        Predicate("calibrated", {camera: 1, rover: 1}),
        Predicate("supports", {camera: 1, mode: 1}),
        Predicate("available", {rover: 1}),
        Predicate("visible", {waypoint: 2}),
        Predicate("have_image", {rover: 1, objective: 1, mode: 1}),
        Predicate("communicated_soil_data", {waypoint: 1}),
        Predicate("communicated_rock_data", {waypoint: 1}),
        Predicate("communicated_image_data", {objective: 1, mode: 1}),
        Predicate("at_soil_sample", {waypoint: 1}),
        Predicate("at_rock_sample", {waypoint: 1}),
        Predicate("visible_from", {objective: 1, waypoint: 1}),
        Predicate("store_of", {store: 1, rover: 1}),
        Predicate("calibration_target", {camera: 1, objective: 1}),
        Predicate("on_board", {camera: 1, rover: 1}),
        Predicate("channel_free", {lander: 1}),
    ]
    # Define the actions
    actions = [
        Action_Schema(
            "navigate",
            {rover: 1, waypoint: 2},
        ),
        Action_Schema(
            "sample_soil",
            {rover: 1, store: 1, waypoint: 1},

        ),
        Action_Schema(
            "sample_rock",
            {rover: 1, store: 1, waypoint: 1},

        ),
        Action_Schema(
            "drop",
            {rover: 1, store: 1},

        ),
        Action_Schema(
            "calibrate",
            {rover: 1, camera: 1, objective: 1, waypoint: 1},

        ),
        Action_Schema(
            "take_image",
            {rover: 1, waypoint: 1, objective: 1, camera: 1, mode: 1},

        ),
        Action_Schema(
            "communicate_soil_data",
            {lander: 1, rover: 1, waypoint: 3},

        ),
        Action_Schema(
            "communicate_rock_data",
            {lander: 1, rover: 1, waypoint: 3},

        ),
        Action_Schema(
            "communicate_image_data",
            {rover: 1, lander: 1, objective:1, mode:1, waypoint: 2},

        ),
    ]
    model = Domain_Model(
        types=[base, lander, mode, rover, store, waypoint, camera, objective],
        predicates=predicates,
        action_schemas=actions,
        device='cpu'
    )
    objects = {
        lander: ['general'],
        mode: ['colour', 'high_res', 'low_res'],
        rover: ['rover0', 'rover1', 'rover2', 'rover3'],
        store: ['rover0store', 'rover1store', 'rover2store', 'rover3store'],
        waypoint: ['waypoint0', 'waypoint1', 'waypoint2', 'waypoint3'],
        camera: ['camera0', 'camera1', 'camera2', 'camera3'],
        objective: ['objective0', 'objective1', 'objective2'],
    }
    model.ground(objects)
    all_grounded_actions = {}
    for action_schema in model.action_schemas:
        obj_lists_per_params = {params_type:[] for params_type in action_schema.params_types}
        for params_type in action_schema.params_types:
            for obj_type in objects.keys():
                if obj_type.is_child(params_type):
                    obj_lists_per_params[params_type].extend(objects[obj_type])
        for obj_list in itertools.product(*[itertools.permutations(obj_lists_per_params[params_type], action_schema.params[params_type])\
                                              for params_type in action_schema.params_types]):
            objects_per_action = {}
            constructed = action_schema.name + ' ' + ' '.join([f'{action_schema.params_types[i].name} '
                                                               +f' {action_schema.params_types[i].name} '.join(obj_list[i])
                                                               for i in range(len(obj_list))])
            all_grounded_actions[constructed] = len(all_grounded_actions)
    steps_state1 = []
    steps_action = []
    steps_state2 = []
    # print(all_grounded_actions)
    # traces = generate.pddl.VanillaSampling(
    #     dom='/Users/omarwattad/Documents/Action Model - Research/rosame/action_model_inference/rovers/StripsRover.pddl',
    #     prob='/Users/omarwattad/Documents/Action Model - Research/rosame/action_model_inference/rovers/pfile98.pddl',
    #     plan_len=1000, num_traces=10).traces
    # for trace in traces:
    #     # last step no action
    #     for t in range(len(trace.steps) - 1):
    #         fluents_in_state1 = {f._serialize()[1:-1] for f in trace.steps[t].state if trace.steps[t].state[f] is True}
    #         fluents_in_state2 = {f._serialize()[1:-1] for f in trace.steps[t + 1].state if
    #                              trace.steps[t + 1].state[f] is True}
    #         state1 = [1 if p in fluents_in_state1 else 0 for p in model.propositions]
    #         state2 = [1 if p in fluents_in_state2 else 0 for p in model.propositions]
    #
    #         # action parameter order may not be the same as our model
    #         action = trace.steps[t].action
    #         action_obj_params = sorted([o for o in action.obj_params], key=lambda o: o.obj_type)
    #
    #         action_check = [o.details() for o in action_obj_params]
    #         if len(action_check) != len(set(action_check)):
    #             continue
    #         steps_action.append(
    #             all_grounded_actions[f"{action.name} {' '.join([o.details() for o in action_obj_params])}"])
    #
    #         steps_state1.append(state1)
    #         steps_state2.append(state2)
    # tojson(steps_state1,steps_action,steps_state2)
    return model

""" Train Model """

action_count = 0
model = rovers()
with open("/Users/omarwattad/Documents/Action Model - Research/rosame/json_files/labels/rovers.json", 'r') as f:
    data = json.load(f)
print(len(data))
actions = {v :k for k,v in model.actions.items()}
triplets = []
action1 = True
action2 = True
action3 = True
action4 = True
action5 = True
action6 = True

# for triplet in data:
    # if action_count < 6:
    #     if actions[triplet[1]].startswith('load-truck') and action1:
    #         action_count += 1
    #         triplets.append(triplet)
    #         action1 = False
    #     elif actions[triplet[1]].startswith('load-airplane') and action2:
    #         action_count += 1
    #         triplets.append(triplet)
    #         action2 = False
    #     elif actions[triplet[1]].startswith('unload-truck') and action3 :
    #         action_count += 1
    #         triplets.append(triplet)
    #         action3 = False
    #     elif actions[triplet[1]].startswith('unload-airplane') and action4:
    #         action_count += 1
    #         triplets.append(triplet)
    #         action4 = False
    #     elif actions[triplet[1]].startswith('drive-truck') and action5:
    #         action_count += 1
    #         triplets.append(triplet)
    #         action5 = False
    #     elif actions[triplet[1]].startswith('fly-airplane') and action6:
    #         action_count += 1
    #         triplets.append(triplet)
    #         action6 = False
    # elif len(triplets) < 7:
    # triplets.append(triplet)
    # else: break
for data_count in [10000,5000,4000,3000,2000,1000,500]:
    for fold in range(1):
        model = rovers()
    # for eps in [0.2]:
        ## adding noise
        # steps_state1 = add_noise_to_trajectory(steps_state1,eps)
        # steps_state2 = add_noise_to_trajectory(steps_state2,eps)

        steps_state1_tensor = []
        steps_action_tensor = []
        steps_state2_tensor = []
        for triplet in data:
            steps_state1_tensor.append(triplet[0])
            steps_action_tensor.append(triplet[1])
            steps_state2_tensor.append(triplet[2])
        steps_state1_tensor = steps_state1_tensor[:data_count]
        steps_action_tensor = steps_action_tensor[:data_count]
        steps_state2_tensor = steps_state2_tensor[:data_count]

        steps_action_tensor = torch.tensor(steps_action_tensor)
        steps_state2_tensor = torch.tensor(steps_state2_tensor).float()
        steps_state1_tensor = torch.tensor(steps_state1_tensor).float()
        print(len(steps_action_tensor))
        batch_sz = 1000
        dataset = TensorDataset(steps_state1_tensor, steps_action_tensor, steps_state2_tensor)
        dataloader = DataLoader(dataset, batch_size=batch_sz, shuffle=False)

        #TRAINING
        parameters = []
        for schema in model.action_schemas:
            parameters.append({'params': schema.parameters(), 'lr': 1e-3})
        optimizer = optim.Adam(parameters)

        for epoch in range(100):
          optimizer.zero_grad()
          loss_final = 0.0
          for i, (state_1, executed_actions, state_2) in enumerate(dataloader):
            precon, addeff, deleff = model.build(executed_actions)
            # The result of applying a in s is (s\Del(a)) U Add(a)
            # We can simplfy this to be:
            # ((p in state 1) ^ (not p in Del(a))) v ((not p in state 1) ^ (p in Add(a)))
            # Note we implicitly apply the constraint that add effects and preconditions
            # cannot intersect and only preconditions can be deleted
            # The "or" can be translated to an addition as the two sides and exclusive
        #     preds = addeff + (1-addeff)*state_1*(1-deleff)
            preds = 1- (1-state_1*(1-deleff)) * (1-(1-state_1)*addeff)

            # Since we view the state_2 as true targets, we can binary cross-entropy loss
            # If state_2 is also predicated, use KL-divergence to ensure two distributions are close?
            loss = F.mse_loss(preds, state_2, reduction='sum')
            # Add in validity constraint
            # Since executed actions are applicable in state_1
            # p in Pre(a) -> p in state_1 for all a in executed_actions
            # not ((p in Pre(a)) ^ (not p in state_1))
            validity_constraint = (1-state_1) * (precon)
            loss += F.mse_loss(validity_constraint, torch.zeros(validity_constraint.shape, dtype=validity_constraint.dtype), reduction='sum')
            loss += 0.2*F.mse_loss(precon, torch.ones(precon.shape, dtype=precon.dtype), reduction='sum')
        #     loss += model.constraint_loss()
            loss.backward()
            optimizer.step()
            loss_final += loss.item() / batch_sz
          if epoch%10 == 0:
            print('Epoch {} RESULTS: Average loss: {:.10f}'.format(epoch, loss_final))

        for action_schema in model.action_schemas:
            action_schema.pretty_print()
            print()

        # TO PDDL



        def to_pddl(write_pddl_to):
            pddl = ""
            pddl = head_pddl("blocksworld")
            for schema in model.action_schemas:
                pre,add,dell,params = schema.pretty_print()
                pddl += action_pddl(schema,pre,add,dell,params)
                print("----------------------------")
            pddl += ")"
            print(pddl)
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

        def head_pddl(domain_name):
            define = f"(define (domain {domain_name}-4ops)\n" # remove "-4ops"
            req_str = ""
            if domain_name == "blocksworld" or domain_name == 'hanoi':
                req_str = "(:requirements :strips :equality)\n"
            elif domain_name == "gripper-strips":
                req_str = "(:requirements :adl :equality)\n"

            types = f"(:types block - object)"

            predicates = f'(:predicates (arm-empty) (clear ?a - block) (on-table ?a - block) (holding ?a - block) (on ?a - block ?b - block))'
            predicates += "\n\n"
            return define + req_str + types + predicates

        to_pddl(f'/Users/omarwattad/Documents/Action Model - Research/rosame/final_domains/label/rosame/5-fold-labels/rovers_{data_count}_domain.pddl')