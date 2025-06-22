import re
import pandas as pd
from collections import defaultdict
import os
from pathlib import Path
import numpy as np
from numpy.distutils.system_info import triplet
from pddl_plus_parser.models import Observation, ActionCall, State, Domain, Precondition, Predicate, ObservedComponent
from pddl_plus_parser.lisp_parsers import DomainParser, ProblemParser, TrajectoryParser
def compare_actions(domain1, domain2):
    """Compare actions between two PDDL domains."""
    actions1 = list(domain1.actions.keys())
    actions2 = list(domain2.actions.keys())
    # Compare action order
    if actions1 != actions2:
        print("Warning: The actions have a different order.")

    # Check for missing or extra actions
    missing_actions = set(actions1) - set(actions2)
    extra_actions = set(actions2) - set(actions1)

    if missing_actions:
        print(f"Warning: Missing actions in second domain: {missing_actions}")
    if extra_actions:
        print(f"Warning: Extra actions in second domain: {extra_actions}")

def compare_preconditions_effects(domain1, domain2,data):
    FP_pre, FN_pre, FP_eff, FN_eff = 0, 0, 0, 0
    TP_pre, TP_eff = 0, 0  # True positives for preconditions and effects

    """Compare preconditions and effects between actions of two PDDL domains."""
    for action in domain1.actions:
        # precision_precond_action = f"precondition_{action}_precision"
        # precision_effect_action = f"effect_{action}_precision"
        # recall_precond_action = f"precondition_{action}_recall"
        # recall_effect_action = f"effect_{action}_recall"
        # if precision_effect_action not in data:
        #     data[precision_effect_action] = []
        # if precision_precond_action not in data:
        #     data[precision_precond_action] = []
        # if recall_precond_action not in data:
        #     data[recall_precond_action] = []
        # if recall_effect_action not in data:
        #     data[recall_effect_action] = []

        # FP_pre, FN_pre, FP_eff, FN_eff = 0, 0, 0, 0
        # TP_pre, TP_eff = 0, 0  # True positives for preconditions and effects

        if action not in domain2.actions:
            continue
        params = domain1.actions[action].parameter_names
        precond1 = domain1.actions[action].preconditions.root.operands
        precond2 = domain2.actions[action].preconditions.root.operands
        new_precond = []
        for predicate in precond1:
            if predicate.is_positive:
                new_precond.append(predicate.untyped_representation)
        precond1 = new_precond

        new_precond = []
        for predicate in precond2:
            if predicate.is_positive:
                new_precond.append(predicate.untyped_representation)
        precond2 = new_precond

        # Compare precondition order
        if precond1 != precond2:
            print(f"Warning: The preconditions of action {action} have a different order.")

        # True Positives (matching preconditions)
        precond1_set = set(precond1)
        TP_pre += len(precond1_set.intersection(set(precond2)))

        # False negatives (missing preconditions)
        missing_preconditions = set(precond1) - set(precond2)
        if missing_preconditions:
            print(f"FALSE NEGATIVE Warning: Missing preconditions in second domain for action {action}: {missing_preconditions}")
            FN_pre += len(missing_preconditions)

        # False positives (extra preconditions)
        extra_preconditions = set(precond2) - set(precond1)
        if extra_preconditions:
            print(f"FALSE POSITIVE Warning: Extra preconditions in second domain for action {action}: {extra_preconditions}")
            FP_pre += len(extra_preconditions)

        # Compare effects similarly
        effects1 = domain1.actions[action].discrete_effects
        effects2 = domain2.actions[action].discrete_effects
        new_effects = []
        for effect in effects1:
            new_effects.append(effect.untyped_representation)
        effects1 = new_effects
        new_effects = []
        for effect in effects2:
            new_effects.append(effect.untyped_representation)
        effects2 = new_effects
        # Compare effect order
        if effects1 != effects2:
            print(f"Warning: The effects of action {action} have a different order.")

        # True Positives (matching effects)
        effects1_set = set(effects1)
        TP_eff += len(effects1_set.intersection(set(effects2)))

        # False negatives (missing effects)
        missing_effects = set(effects1) - set(effects2)
        if missing_effects:
            print(f"FALSE NEGATIVE Warning: Missing effects in second domain for action {action}: {missing_effects}")
            FN_eff += len(missing_effects)

        # False positives (extra effects)
        extra_effects = set(effects2) - set(effects1)
        if extra_effects:
            print(f"FALSE POSITIVE Warning: Extra effects in second domain for action {action}: {extra_effects}")
            FP_eff += len(extra_effects)


        # print("precond.")
        # print(precond1)
        # print("--------")
        # print(precond2)
        # print("-------effect--------")
        # print(effects1)
        # print("----------")
        # print(effects2)
        # Precision and Recall for Preconditions
    precision_pre = TP_pre / (TP_pre + FP_pre) if (TP_pre + FP_pre) > 0 else 0
    recall_pre = TP_pre / (TP_pre + FN_pre) if (TP_pre + FN_pre) > 0 else 0

    # Precision and Recall for Effects
    precision_eff = TP_eff / (TP_eff + FP_eff) if (TP_eff + FP_eff) > 0 else 0
    recall_eff = TP_eff / (TP_eff + FN_eff) if (TP_eff + FN_eff) > 0 else 0

    data["precision_effect"].append(round(precision_eff, 2))
    data["precision_precondition"].append(round(precision_pre, 2))
    data["recall_effect"].append(round(recall_eff, 2))
    data["recall_precondition"].append(round(recall_pre, 2))

    # data[precision_effect_action].append(precision_eff)
    # data[precision_precond_action].append(precision_pre)
    # data[recall_effect_action].append(recall_eff)
    # data[recall_precond_action].append(recall_pre)




    # Print False Positive, False Negative, Precision, and Recall results
    print("---------------------------------------------------------------------------------------")
    print(f"False Positives: Preconditions: {FP_pre}, Effects: {FP_eff}")
    print(f"False Negatives: Preconditions: {FN_pre}, Effects: {FN_eff}")
    print(f"Precision: Preconditions: {precision_pre:.2f}, Effects: {precision_eff:.2f}")
    print(f"Recall: Preconditions: {recall_pre:.2f}, Effects: {recall_eff:.2f}")
    print("---------------------------------------------------------------------------------------")


# usage:
# compare_pddl_domains(gold_standard, "/Users/omarwattad/Documents/Action Model - Research/sam_learning/10_domain.pddl",True)
# compare_pddl_domains(gold_standard, "10_domain.pddl")
# gold_standard = DomainParser(f'/Users/omarwattad/Documents/Action Model - Research/sam_learning/gold_domains/rovers/StripsRover.pddl', partial_parsing=False).parse_domain()
# learned_domain = DomainParser(f"/Users/omarwattad/Documents/Action Model - Research/rosame/final_domains/label/sam/rovers_4000_domain.pddl",
#                               partial_parsing=False).parse_domain()
# compare_preconditions_effects(gold_standard, learned_domain, 1)

data = {
    'algorithm': [],
    'domain':[],
    "data": [],
    # "Threshold": [],
    # 'Epsilon' : [],
    # 'fold':[]

}
data["precision_effect"] = []
data["precision_precondition"] = []
data["recall_effect"] = []
data["recall_precondition"] = []

for domain in ['rovers']:
    for algo in ['sam','rosame']:
        for data_amount in [10000,5000,4000,3000,2000,1000,500]:
            # for eps in [0,1,2,3,4]:
                if algo == "rosame":
                    print(domain, algo, data_amount)
                    if domain == 'blocks_grid':
                        domain_ = 'blocks'
                    else:
                        domain_ = domain
                    if domain == "logistics" and data_amount == 'max':
                        break
                    data_amount_ = data_amount
                    if data_amount == 'max':
                        data_amount_ = 1
                    data['algorithm'].append(algo)
                    data['domain'].append(domain)
                    data['data'].append(data_amount)
                    # data['Threshold'].append("N/A")
                    # data['fold'].append(eps)

                    gold_standard =DomainParser(f'/Users/omarwattad/Documents/Action Model - Research/rosame/action_model_inference/rovers/StripsRover.pddl', partial_parsing=False).parse_domain()
                    learned_domain =DomainParser(f"final_domains/label/{algo}/5-fold-labels/{domain}_{data_amount_}_domain.pddl", partial_parsing=False).parse_domain()
                    compare_preconditions_effects(gold_standard, learned_domain ,data)

                if algo == "sam":
                    # for th in [0.1,0.2,0.3,0.4,0.5]:
                        data_amount_ = data_amount
                        print(domain, algo, data_amount)
                        if domain == 'blocks_grid':
                            domain_ = 'blocks'
                        else:
                            domain_ = domain
                        # if data_amount == 'max':
                        #     data_amount_ = 1

                        data['algorithm'].append(algo)
                        data['domain'].append(domain)
                        data['data'].append(data_amount)
                        # data['Threshold'].append(th)
                        # data['Epsilon'].append(eps)

                        gold_standard = DomainParser(f'/Users/omarwattad/Documents/Action Model - Research/sam_learning/gold_domains/rovers/StripsRover.pddl',
                                                     partial_parsing=False).parse_domain()
                        if domain == "gripper":
                            gold_standard = DomainParser(f'data/pddl/{domain}/domain2.pddl',
                                                         partial_parsing=False).parse_domain()
                        learned_domain = DomainParser(f"final_domains/label/{algo}/{domain}_{data_amount_}_domain.pddl",
                                                      partial_parsing=False).parse_domain()
                        compare_preconditions_effects(gold_standard, learned_domain, data)

df = pd.DataFrame(data)
csv_file = "final_domains/results/new results/rovers.csv"
df.to_csv(csv_file,index=False)



