from collections import defaultdict
import sys

import itertools
from typing import List, Union, Optional, Dict


from pddl_plus_parser.models import Domain, Observation, State, ActionCall, PDDLFunction, Predicate, GroundedPredicate, create_type_hierarchy_graph

from pddl_plus_parser.lisp_parsers import ProblemParser, TrajectoryParser, DomainParser

from models.rosame import Action_Schema,Domain_Model,Predicate,Type
import torch
import torch.nn as nn
import torch.optim as optim
import torch.nn.functional as F
from torch.utils.data import TensorDataset, DataLoader, random_split
import numpy as np
import networkx as nx
# sys.path.append("/Users/omarwattad/Documents/Action-Model-Research/sam_learning")
# from sam_learning.learners.informed_sam import InformedSAMLearner
# from sam_learning.learners.sam_learning import SAMLearner
# from sam_learning.learners.informed_backup import BackupInformedSAMLearner


def parse_state(state, partial_domain):
    state_predicates = defaultdict(set)
    for predicate in state:
        predicate_lst = predicate.split()
        if predicate_lst[0] in partial_domain.predicates:
            lifted_predicate = partial_domain.predicates[predicate_lst[0]]
            grounded_predicate = parse_grounded_predicate(predicate_lst, lifted_predicate)
            state_predicates[lifted_predicate.untyped_representation].add(grounded_predicate)
            continue
    return State(predicates=state_predicates, fluents={})

def parse_grounded_predicate(grounded_predicate_ast: List[str],
                                 lifted_predicate: Predicate) -> GroundedPredicate:

    predicate_name = lifted_predicate.name
    predicate_signature_items = grounded_predicate_ast[1:]

    if len(predicate_signature_items) != len(lifted_predicate.signature):
        raise ValueError(
            f"Received illegal grounded predicate with mismatching signature - {grounded_predicate_ast}")

    object_mapping = {
        parameter_name: object_name for object_name, parameter_name in
        zip(predicate_signature_items, lifted_predicate.signature)
    }

    return GroundedPredicate(name=predicate_name, signature=lifted_predicate.signature,
                             object_mapping=object_mapping, is_positive=True)

class Algorithm:
    '''
    A class for learning algorithms that prepares the data and learn an action model from generated traces.
    '''
    def __init__(self, domain_file, problem = None, traces = None, threshold = 1, epsilon = 0):
        self.traces = traces
        self.domain = DomainParser(domain_file,partial_parsing=True).parse_domain()
        self.problem = problem
        self.trajectoy = TrajectoryParser(self.domain)
        self.grounded_actions = {}
        self.objects = {}
        self.type_hierarchy_graph = None
        self.rosame = None
        # self.sam = SAMLearner(self.domain)
        # self.informed_sam_with = InformedSAMLearner(self.domain)
        # self.informed_sam_without = BackupInformedSAMLearner(self.domain)
        self.epsilon = epsilon
        self.threshold = threshold

    def add_problem(self,problem):
        self.problem = problem
        self.rosame = self.prepare_rosame()
    #
    # def sam_traces(self, traces):
    #     """
    #     Processes a list of traces by converting them into a non-typed representation.
    #
    #     Each trace consists of:
    #     - A set of previous state represented as fluents.
    #     - An action with associated parameters.
    #     - A set of next state conditions after the action is executed.
    #
    #     The function removes type information from fluents and actions, producing a
    #     simplified, non-typed representation of the traces.
    #
    #     Args:
    #         traces (list of tuples): Each tuple represents a transition in the format
    #                                  (previous state, action, next state), where:
    #             - previous state (list of str): State fluents before the action.
    #             - action (Action object): Action taken with parameters.
    #             - next state (list of str): State fluents after the action.
    #
    #     Returns:
    #         list of tuples: A list of processed traces in the format:
    #                         (non_typed_previous_state, non_typed_action, non_typed_next_state,)
    #     """
    #     non_typed_triplets = []
    #     for triplet in traces:
    #         non_typed_pre = [" ".join(fluent.split()[::2]) for fluent in triplet[0]]
    #         non_typed_next = [ " ".join(fluent.split()[::2]) for fluent in triplet[2]]
    #         action_params = []
    #         action = triplet[1].split()
    #         for param in action[2::2]:
    #             action_params.append(param)
    #         action_params_str = " ".join(action_params)
    #         non_typed_action = action[0] + " " + action_params_str
    #
    #         non_typed_triplets.append((non_typed_pre, non_typed_action, non_typed_next))
    #     return non_typed_triplets
    #
    # def get_noisy_traces_sam(self,pre_state, action, next_state, threshold):
    #     propositions = {v:k for k,v in self.rosame.propositions.items()}
    #     action_order = {v:k for k,v in self.rosame.actions.items()}
    #     triplets = []
    #     for i in range(len(pre_state)):
    #         pre = []
    #         next = []
    #
    #         for ind in range(len(pre_state[i])):
    #             if pre_state[i][ind] > threshold:
    #                 pre.append(propositions[ind])
    #             if next_state[i][ind] > threshold:
    #                 next.append(propositions[ind])
    #         act = action_order[action[i]]
    #         triplets.append((pre, act, next))
    #     return triplets


    # def create_observations(self,traces=None):
    #     """ Generates an observation object from the processed execution traces that SAM algorithm learns from"""
    #     observation_high, observation_low = Observation(), Observation()
    #     observation_high.grounded_objects = self.problem.objects
    #     observation_low.grounded_objects = self.problem.objects
    #
    #     pre, action, next = self.prepare_rosame_data(self.epsilon)
    #     if traces:
    #         triplets_low = self.sam_traces(traces)
    #     else:
    #         triplets_low = self.get_noisy_traces_sam(pre, action, next, self.threshold)
    #         triplets_low = self.sam_traces(triplets_low)
    #
    #     for triplet in triplets_low:
    #         pre_state = parse_state(triplet[0],self.domain)
    #         next_state = parse_state(triplet[2], self.domain)
    #         action_call = self.trajectoy.parse_action_call([triplet[1].split()])
    #         observation_low.add_component(pre_state, action_call, next_state)
    #
    #     triplets_high = self.get_noisy_traces_sam(pre, action, next, 1 - self.threshold)
    #     triplets_high = self.sam_traces(triplets_high)
    #
    #     for triplet in triplets_high:
    #         pre_state = parse_state(triplet[0], self.domain)
    #         next_state = parse_state(triplet[2], self.domain)
    #         action_call = self.trajectoy.parse_action_call([triplet[1].split()])
    #         observation_high.add_component(pre_state, action_call, next_state)
    #
    #     return observation_low , observation_high
    #
    # def learn_sam(self,traces = None):
    #     """Learns an action model using SAM learning."""
    #     observation_low,observation_high = self.create_observations(traces)
    #
    #     # learned_sam, learned_data = self.sam.learn_action_model([observation_low])
    #     learned_model, learning_data = self.informed_sam_with.learn_action_model([observation_low],[observation_high])
    #     learned_without , without_learning_data = self.informed_sam_without.learn_action_model([observation_low],[observation_high])
    #     return learned_model, learned_without, learning_data, without_learning_data
    #     # return learned_sam, learned_data


    def find_root_nodes(self,G: nx.DiGraph) -> str:
        """
        Finds the root nodes of the directed graph (nodes with in-degree 0).
        """
        return [node for node in G.nodes if G.in_degree(node) == 0][0]

    def _prepare_types(self,domain_types):
        """
        Creates Type: parent representation for the types of the problem
        """
        self.type_hierarchy_graph = create_type_hierarchy_graph(domain_types)
        root = self.find_root_nodes(self.type_hierarchy_graph)
        hierarchy_with_parents = [{'name': child,'parent': parent} for parent, child in nx.bfs_edges(self.type_hierarchy_graph, root)]
        return [{'name': 'object','parent': None}] + hierarchy_with_parents

    def _get_types_count(self,container):
        """
        A map that countes for each predicate/action what are the types used and how many of them
        """
        params = defaultdict(int)
        for _, types in container.signature.items():
            params[types.name] += 1
        return params

    def _prepare_predicates(self,domain_predicates):
        """
        Creates predicate map that has name and dict of type: count
        """
        predicates_lst = []
        for name, predicate in domain_predicates.items():
            predicate_dict = {}
            predicate_dict["name"] = name
            predicate_dict["params"] = self._get_types_count(predicate)
            predicates_lst.append(predicate_dict)
        return predicates_lst


    def _prepare_action_schema(self,domain_actions):
        """
        Creates action map that has name and dict of type: count
        """
        actions_lst = []
        for name, action in domain_actions.items():
            action_dict = {}
            action_dict["name"] = name
            action_dict["params"] = self._get_types_count(action)
            actions_lst.append(action_dict)
        return actions_lst

    def get_domain_model(self,info_dict):
        """
        The function loads domain model from the information of actions,predicates and types
        """
        domain_model = Domain_Model.create_from_json(info_dict,"cpu")
        domain_model.ground_from_dict(self.objects)
        return domain_model


    def get_objects(self,objects):
        """
        function to map the objects by type
        """
        object_dict = defaultdict(list)
        for name,t in objects.items():
            object_dict[t.type.name].append(name)
        if len(self.domain.constants) > 0:
            for name, t in self.domain.constants.items():
                object_dict[t.type.name].append(name)
        return object_dict

    def check_rosame_action(self, action: str):
        if action in self.rosame.actions:
            return action

        parts = action.split(" ", maxsplit=1)
        predicate_name, predicate_params = parts[0], parts[1].split(" ")
        predicate_params_types = predicate_params[::2]
        predicate_params_values = predicate_params[1::2]

        # Find the first matching proposition with the same predicate name
        rosame_predicate = next((p for p in self.rosame.actions if p.startswith(predicate_name)), None)

        if not rosame_predicate:
            return action  # No matching predicate found

        rosame_parts = rosame_predicate.split(" ")
        rosame_types = rosame_parts[1::2]

        if rosame_types == predicate_params_types:
            return action  # Exact match, return as is

        # Replace types with their parent if needed
        for i, (param_type, rosame_type) in enumerate(zip(predicate_params_types, rosame_types)):
            if param_type != rosame_type and rosame_type in nx.ancestors(self.type_hierarchy_graph,param_type): ## for direct parent we can use self.type_hierarchy_graph.predecessors(param_type)
                predicate_params_types[i] = rosame_type

        return f"{rosame_parts[0]} " + " ".join(
            f"{t} {v}" for t, v in zip(predicate_params_types, predicate_params_values))


    def check_rosame_predicate(self, predicate: str):
        if predicate in self.rosame.propositions:
            return predicate

        parts = predicate.split(" ", maxsplit=1)
        predicate_name, predicate_params = parts[0], parts[1].split(" ")
        predicate_params_types = predicate_params[::2]
        predicate_params_values = predicate_params[1::2]

        # Find the first matching proposition with the same predicate name
        rosame_predicate = next((p for p in self.rosame.propositions if p.startswith(predicate_name)), None)

        if not rosame_predicate:
            return predicate  # No matching predicate found

        rosame_parts = rosame_predicate.split(" ")
        rosame_types = rosame_parts[1::2]

        if rosame_types == predicate_params_types:
            return predicate  # Exact match, return as is

        # Replace types with their parent if needed
        for i, (param_type, rosame_type) in enumerate(zip(predicate_params_types, rosame_types)):
            if param_type != rosame_type and rosame_type in nx.ancestors(self.type_hierarchy_graph,param_type): ## for direct parent we can use self.type_hierarchy_graph.predecessors(param_type)
                predicate_params_types[i] = rosame_type

        return f"{predicate_name} " + " ".join(
            f"{t} {v}" for t, v in zip(predicate_params_types, predicate_params_values))

    def prepare_rosame(self):
        """
            Prepares and constructs a ROSAME-compatible domain model based on the provided domain definitions.

            This function follows a structured process to generate a complete domain model:

            1. Types: Constructs a hierarchical representation of types.
            2. Predicates: Defines logical predicates using.
            3. Action Schemas: Creates action schemas, which define the available actions and their required parameters.
            4. Objects: Extracts objects from the problem definition and stores them.
            5. Domain Model: Combines all components into a structured `Domain_Model` instance.

            Returns:
                Domain_Model: A structured domain model instance containing:
                    - Types
                    - Predicates
                    - Action Schemas
        """
        types = self._prepare_types(self.domain.types)
        predicates = self._prepare_predicates(self.domain.predicates)
        actions = self._prepare_action_schema(self.domain.actions)
        self.objects = self.get_objects(self.problem.objects)
        model = self.get_domain_model({"types":types,"predicates":predicates,"action_schemas":actions})
        return model

    def ground_new_trajectory(self):
        self.objects = self.get_objects(self.problem.objects)
        self.rosame.ground_from_dict(self.objects)

    def generate_noise(self,trajectory):
        if self.epsilon == 0:
            return trajectory
        noisy_trajectory = []
        np.random.seed(123)
        for f in trajectory:
            if f == 0:
                f_noise = np.random.uniform(0, self.epsilon)
            else:
                f_noise = 1 - np.random.uniform(0, self.epsilon)
            noisy_trajectory.append(f_noise)
        return noisy_trajectory

    def prepare_rosame_data(self,observation): ## TODO: For noise: it can be generated here!  CHANGED!!!
        """
        Prepares structured data from traces to be used within the ROSAME framework, which the data should be encoded to True/False (0  and 1)
        using the triples that are created using macq every fluent is true takes 1 else 0
        returns:
        - encoded pre_state
        - encoded next_state
        - encoded action
        """
        steps_action = []
        steps_state1, steps_state2 = [], []
        for component in observation.components:
            action_lst = component.grounded_action_call.__str__()[1:-1].split()
            if len(action_lst) != len(set(action_lst)):
                continue
            next_state, pre_state = [], []
            steps_action.append(self.rosame.actions[component.grounded_action_call.__str__()[1:-1]])
            for _, val in component.next_state.state_predicates.items():
                for pred in val:
                    next_state.append(pred.untyped_representation[1:-1])
            for _, val in component.previous_state.state_predicates.items():
                for pred in val:
                    pre_state.append(pred.untyped_representation[1:-1])
            state1 = [1 if p in pre_state else 0 for p in self.rosame.propositions]
            state2 = [1 if p in next_state else 0 for p in self.rosame.propositions]
            steps_state1.append(state1)
            steps_state2.append(state2)

        # for pre_state, action, next_state in self.traces:
        #     action_obj_params = [o for o in action.obj_params]
        #     action_str = self.check_rosame_action(f"{action.name} {' '.join([o.details() for o in action_obj_params])}")
        #     steps_action.append(self.rosame.actions[action_str])
        #
        #     pre = [self.check_rosame_predicate(p) for p in pre_state]
        #     next = [self.check_rosame_predicate(p) for p in next_state]
        #
        #     state1 = [1 if p in pre else 0 for p in self.rosame.propositions]
        #     state2 = [1 if p in next else 0 for p in self.rosame.propositions]
        #     state1 = self.generate_noise(state1)
        #     state2 = self.generate_noise(state2)
        #
        #     steps_state1.append(state1)
        #     steps_state2.append(state2)
        return steps_state1, steps_action, steps_state2

    def learn_rosame(self, observation,epochs=100):
        """Learns an action model using ROSAME learning."""

        steps_state1, steps_action, steps_state2 = self.prepare_rosame_data(observation)

        steps_state1_tensor = torch.tensor(np.array(steps_state1)).float()
        steps_action_tensor = torch.tensor(np.array(steps_action))
        steps_state2_tensor = torch.tensor(np.array(steps_state2)).float()

        batch_sz = 1000
        dataset = TensorDataset(steps_state1_tensor, steps_action_tensor, steps_state2_tensor)
        dataloader = DataLoader(dataset, batch_size=batch_sz, shuffle=False)

        parameters = []
        for schema in self.rosame.action_schemas:
            parameters.append({'params': schema.parameters(), 'lr': 1e-3})
        optimizer = optim.Adam(parameters)

        for epoch in range(epochs):
            loss_final = 0.0
            for i, (state_1, executed_actions, state_2) in enumerate(dataloader):
                optimizer.zero_grad()
                precon, addeff, deleff = self.rosame.build(executed_actions)
                preds = state_1 * (1 - deleff) + (1 - state_1) * addeff
                loss = F.mse_loss(preds, state_2, reduction='sum')
                validity_constraint = (1 - state_1) * (precon)
                loss += F.mse_loss(validity_constraint,
                                   torch.zeros(validity_constraint.shape, dtype=validity_constraint.dtype),
                                   reduction='sum')
                #     loss += model.constraint_loss()
                loss += 0.2 * F.mse_loss(precon, torch.ones(precon.shape, dtype=precon.dtype), reduction='sum')
                loss.backward()
                optimizer.step()
                loss_final += loss.item() / batch_sz
            if epoch % 10 == 0:
                print('Epoch {} RESULTS: Average loss: {:.10f}'.format(epoch, loss_final))


    def action_params_pddl(self, params):
        """
        a help function that helps to create action string for pddl
        """
        param_str = " ".join(f"?{param} - {type_.name}" for type_, p in params.items() for param in p)
        return f"({param_str})\n"

    def format_conditions(self, conditions, negate=False):
        formatted = []
        for cond in conditions:
            parts = cond.split()
            if len(parts) > 1:
                args = " ".join(f"?{parts[i]}" for i in range(1, len(parts)))
                if negate:
                    formatted.append(f" (not ({parts[0]} {args}))")
                else:
                    formatted.append(f"({parts[0]} {args})")
            else:
                if negate:
                    formatted.append(f" (not ({parts[0]}))")
                else:
                    formatted.append(f"({parts[0]})")
        return " ".join(formatted)

    def precondition_pddl(self, pre):
        return f"(and {self.format_conditions(pre)})\n"

    def effects_pddl(self, add, delete):
        return f"(and {self.format_conditions(add)}{self.format_conditions(delete, negate=True)}))\n\n"

    def _types_to_pddl(self,types):
        parent_child_map = defaultdict(list)
        for type_name, type_obj in types.items():
            if type_name == "object":
                continue

            parent_child_map[type_obj.parent.name].append(type_name)

        types_strs = []
        for parent_type, children_types in parent_child_map.items():
            types_strs.append(f"\t{' '.join(children_types)} - {parent_type}")

        return "\n".join(types_strs)

    def to_pddl_action(self, action):
        """Returns the PDDL string representation of the action.
        :return: the PDDL string representing the action.
        """

        precondition, add_eff, delete_eff, param = action.pretty_print()
        action_string = (
            f"(:action {action.name}\n"
            f"\t:parameters {self.action_params_pddl(param)}\n"
            f"\t:precondition {self.precondition_pddl(precondition)}\n"
            f"\t:effect {self.effects_pddl(add_eff,delete_eff)}"
        )
        formatted_string = "\n".join([line for line in action_string.split("\n") if line.strip()])
        return f"{formatted_string}\n"

    def _constants_to_pddl(self,domain) -> str:
        """Converts the constants to a PDDL string.

        :return: the PDDL string representing the constants.
        """
        same_type_constant = defaultdict(list)
        for const_name, constant in domain.constants.items():
            if const_name == "object":
                continue

            same_type_constant[constant.type.name].append(const_name)

        types_strs = []
        for constant_type_name, constant_objects in same_type_constant.items():
            types_strs.append(f"\t{' '.join(constant_objects)} - {constant_type_name}")

        return "\n".join(types_strs)

    def rosame_to_pddl(self):
        # TODO: take it from sam
        predicates = "\n\t".join([str(p) for p in self.domain.predicates.values()])
        predicates_str = f"(:predicates {predicates}\n)\n\n" if len(self.domain.predicates) > 0 else ""
        functions = "\n\t".join([str(p) for p in self.domain.functions.values()])
        functions_str = f"(:functions {functions}\n)\n\n" if len(self.domain.functions) > 0 else ""
        types = f"(:types {self._types_to_pddl(self.domain.types)}\n)\n\n" if len(self.domain.types) > 0 else ""
        constants = f"(:constants {self._constants_to_pddl(self.domain)}\n)\n\n" if len(self.domain.constants) > 0 else ""
        actions = "\n".join(self.to_pddl_action(action) for action in self.rosame.action_schemas)

        return (
            f"(define (domain {self.domain.name})\n"
            f"(:requirements {' '.join(self.domain.requirements)})\n"
            f"{types}"
            f"{constants}"
            f"{predicates_str}"
            f"{functions_str}"
            f"{actions}\n)"
        )
    def export_rosame_domain(self,rosame_path):
        with open(rosame_path, "w") as f:
            f.write(self.rosame_to_pddl())

    def export_sam_domain(self,learned_model,path):
        with open(path, "w") as f:
            f.write(learned_model.to_pddl())




#
# ### USAGE
# traces = TraceGenerator("/Users/omarwattad/Documents/Action Model - Research/rosame/action_model_inference/gripper/domain.pddl","/Users/omarwattad/Documents/Action Model - Research/rosame/action_model_inference/gripper/prob02.pddl")
# model = Algorithm(traces,10,10)
# model.learn_rosame()
# learned_model, _ = model.learn_sam()
# print(learned_model.to_pddl())
# print("//////////////////////////////////////////")
# print(model.to_pddl())
