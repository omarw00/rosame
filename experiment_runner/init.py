"""" Exp. Runner
v1 -
-- input: domain problem generator
-- no noise
-- from domain take types, predicates
-- from problem file take current objects
-- use domain/problem parser

- Problem Generator:
input: domain, problem file path
output: problem, propositions, action order
parsing using domain Problem parser - DONE
create Generate - function - that creates the propositions and action order dictionaries - DONE
Another solution
it can be done using grounded predicates and using ground method from rosame in class predicate
ADD: if the algo is rosmae use Predicate.ground() because for now it is saved without the types!


-Trace Generator:
input: domain, problem
output: trace
For ROSAME check in logistics domain why did they add some strings in generating the traces.

Algorithm:
input: algo name/number(can be list), domain(? name) ,traces
output: learned model/s
For Types - in PDDLType is is_sub_type is the same as is_child in Rosame.Type (?)

experiment runner:
input: learned model/s (domain), gold standard domain
output: statistical results

After Problem Generator and Trace Generator, we have:
1. domain
2. problem
3. propositions
4. action order
5. trace (data)

That we have to use for algorithm to learn it.
Next step:
learned model is input for experiment runner for statistical results.

Improvements:
I-SAM --> update it that it takes the traces and threshold and create the observations inside
"""
from pathlib import Path

from trace_generator import TraceGenerator
from algorithm import Algorithm
from experiment_runner import ExperimentRunner
from generate import Generator
import sys
from pddl_plus_parser.models import Domain, Observation, State, ActionCall, PDDLFunction, Predicate, GroundedPredicate, create_type_hierarchy_graph
from pddl_plus_parser.lisp_parsers import ProblemParser, TrajectoryParser, DomainParser
sys.path.append("/Users/omarwattad/Documents/Action-Model-Research/sam_learning")
from sam_learning.learners.informed_sam import InformedSAMLearner
from sam_learning.learners.sam_learning import SAMLearner
from sam_learning.learners.informed_backup import BackupInformedSAMLearner
DIRECTORY_PATH = Path(f"/Users/omarwattad/Documents/Action-Model-Research/rosame/experiment_runner")

# domain_name = 'rovers'
# trace_generator = TraceGenerator(f"/Users/omarwattad/Documents/Action-Model-Research/rosame/experiment_runner/{domain_name}_experiments/domain.pddl",
#                                  DIRECTORY_PATH / f"problem_generator/{domain_name}_problems/pfile1.pddl",DIRECTORY_PATH / f"problem_generator/{domain_name}_problems",100)
# experiment = ExperimentRunner(trace_generator.domain_file_name)
partial_domain = DomainParser(Path("/Users/omarwattad/Documents/Action-Model-Research/rosame/domain.pddl")).parse_domain()
problem = ProblemParser(Path("/Users/omarwattad/Documents/Action-Model-Research/rosame/pfile.pddl"),partial_domain).parse_problem()

complete_observation = TrajectoryParser(partial_domain, problem).parse_trajectory(
                "/Users/omarwattad/Documents/Action-Model-Research/rosame/pfile.trajectory", ["a1","a2","a3","a4"]
            )
experiment = ExperimentRunner(f"/Users/omarwattad/Documents/Action-Model-Research/rosame/experiment_runner/rovers_experiments/domain.pddl")
partial_domain = DomainParser(
    f"/Users/omarwattad/Documents/Action-Model-Research/rosame/experiment_runner/rovers_experiments/domain.pddl",
    partial_parsing=False).parse_domain()
domain_file = f"/Users/omarwattad/Documents/Action-Model-Research/rosame/experiment_runner/rovers_experiments/domain.pddl"
problem_file = DIRECTORY_PATH / f"problem_generator/rovers_problems/pfile1.pddl"
for domain_name in ['rovers']:
    for num_traj in [1,2,3,4,5,6,7,8,9,10,15]:
        for fold in [0,1,2,3,4]:
            for epoch in [100,200]:
                algorithm = Algorithm(domain_file)
                observations = []
                for num_prob in range(fold * num_traj, (fold + 1) * num_traj):
                    print(num_traj, fold, num_prob)
                    problem = ProblemParser(
                        f"/Users/omarwattad/Documents/Action-Model-Research/rosame/experiment_runner/problem_generator/{domain_name}_problems/pfile{num_prob}.pddl",
                        domain=partial_domain).parse_problem()
                    observation = TrajectoryParser(partial_domain, problem).parse_trajectory(
                        f"/Users/omarwattad/Documents/Action-Model-Research/rosame/experiment_runner/problem_generator/{domain_name}_problems/pfile{num_prob}.trajectory")
                    algorithm.add_problem(problem)

                    observations.append(observation)
                    algorithm.ground_new_trajectory()
                    algorithm.learn_rosame(observation,epoch)

                # Run SAM
                print('Running SAM "with remove effect rule"')
                sam_without = SAMLearner(partial_domain)
                learned, learning_data = sam_without.learn_action_model(observations)

                # Export domains
                with open(f'/Users/omarwattad/Documents/Action-Model-Research/rosame/experiment_runner/{domain_name}_experiments/epoch/sam/{num_traj}_{fold}_{epoch}.pddl','w') as f:
                    f.write(learned.to_pddl())

                algorithm.export_rosame_domain(f'/Users/omarwattad/Documents/Action-Model-Research/rosame/experiment_runner/{domain_name}_experiments/epoch/rosame/{num_traj}_{fold}_{epoch}.pddl')

                # for action in algorithm.rosame.action_schemas:
                #     action.pretty_print()
                #     print('-------------------------------------')

                # Running experiments
                print("Running Experiment")
                experiment.run_single_experiment(f'/Users/omarwattad/Documents/Action-Model-Research/rosame/experiment_runner/{domain_name}_experiments/epoch/sam/{num_traj}_{fold}_{epoch}.pddl','sam',num_traj,meta_data=learning_data,fold=fold)
                experiment.run_single_experiment(f'/Users/omarwattad/Documents/Action-Model-Research/rosame/experiment_runner/{domain_name}_experiments/epoch/rosame/{num_traj}_{fold}_{epoch}.pddl','rosame',num_traj,fold=fold,epoch=epoch)
    experiment.export_statistics(f"/Users/omarwattad/Documents/Action-Model-Research/rosame/experiment_runner/results/new/epoch_{domain_name}.csv")












# PATH = Path("/Users/omarwattad/Downloads/ma-sam-main/experiments_dataset/satellite")
# experiment = ExperimentRunner(PATH / "satellite_combined_domain.pddl")
# for i in range(1,16):
#     # experiment.run_single_experiment(f"/Users/omarwattad/Documents/Action-Model-Research/rosame/MA_domains/satellite/MA-ROSAME_{i}.pddl","MAROSAME",i)
#     experiment.run_single_experiment(f"/Users/omarwattad/Documents/Action-Model-Research/rosame/MA_domains/satellite/MA-SAM_{i}","MASAM",i)
# experiment.export_statistics("/Users/omarwattad/Documents/Action-Model-Research/rosame/MA_domains/results_satellite_sam.csv")


