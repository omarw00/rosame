import sys
sys.path.append("/Users/omarwattad/Documents/Action-Model-Research/sam_learning")
from trajectory_creators.random_walk_trajectories_creator import RandomWalkTrajectoriesCreator
from typing import Dict, Set, List, Tuple, Optional
from utilities import SolverType
import shutil
from pddl_plus_parser.exporters import TrajectoryExporter, TrajectoryTriplet
import random
from macq import generate
import itertools
from pddl_plus_parser.lisp_parsers import DomainParser, ProblemParser, TrajectoryParser
from pddl_plus_parser.models import Observation, Predicate, ActionCall, State, Domain, ObservedComponent, PDDLObject, Problem
from pathlib import Path

SEED = 42
class TraceGenerator(RandomWalkTrajectoriesCreator):
    """
    A class to generate state-action-state triplets from PDDL planning traces.

    Attributes:
        domain_file (str): Path to the PDDL domain file.
        problem_file (str): Path to the PDDL problem file.
        domain (Domain): Parsed domain object.
        problem (Problem): Parsed problem object.
    """
    def __init__(self, domain_file: str, problem_file: str, directory_path: Path = None, max_num_steps_in_trajectory: int = 0):
        super().__init__(domain_file, directory_path)
        self.domain = DomainParser(domain_file, partial_parsing=False).parse_domain()
        self.problem = ProblemParser(problem_file,self.domain).parse_problem()
        self.max_num_steps_in_trajectory = max_num_steps_in_trajectory


    def create_random_plan(self, domain: Domain, problem: Problem, grounded_actions: Set[ActionCall]) -> Tuple[List[TrajectoryTriplet], List[str]]:
        """Creates a random trajectory from the input domain and problem by randomly executing actions.

        :param domain: The domain that contain the actions to execute.
        :param problem: the problem containing the initial state and the objects.
        :param grounded_actions: a list of all the possible grounded actions that match the problem.
        :return: a list of the triplets that represent the trajectory and the plan.
        """
        self.logger.info(f"Starting to create a random trajectory for the problem - {problem.name}")
        plan = []
        current_state = State(predicates=problem.initial_state_predicates, fluents=problem.initial_state_fluents, is_init=True)
        action_triplets = []
        for i in range(self.max_num_steps_in_trajectory):
            self.logger.debug(f"Selecting an action for timestep {i}.")
            if random.random() < 0.0:
                self.logger.debug(f"Selecting an inapplicable action for timestep {i}.")
                action, next_state = self._select_inapplicable_action(domain, problem, current_state, grounded_actions)
                action_triplets.append(TrajectoryTriplet(previous_state=current_state, op=action, next_state=next_state))
                plan.append(str(action))
                current_state = next_state.copy()
                continue

            self.logger.debug(f"Selecting an applicable action for timestep {i}.")
            try:
                action, next_state = self._select_applicable_action(domain, problem, current_state, grounded_actions)
                action_triplets.append(TrajectoryTriplet(previous_state=current_state, op=action, next_state=next_state))
                plan.append(str(action))
                current_state = next_state.copy()

            except ValueError:
                self.logger.warning(f"No applicable actions found for timestep {i}.")
                break

        return action_triplets, plan


    def create_domain_trajectories(self, problems_prefix: str = "pfile", output_directory_path: Optional[Path] = None) -> None:
        """Creates the domain trajectory files.

        :param problems_prefix: the prefix of the problem files.
        :param output_directory_path: the path to the output directory.
        """
        domain_file_path = self.working_directory_path / self.domain_file_name
        output_dir = output_directory_path or self.working_directory_path
        domain = DomainParser(domain_file_path).parse_domain()
        trajectory_exporter = TrajectoryExporter(domain=domain, allow_invalid_actions=False)
        for problem_file_path in self.working_directory_path.glob(f"{problems_prefix}*.pddl"):
            self.logger.info(f"Creating the trajectory for the problem - {problem_file_path.stem}")
            output_trajectory_path = output_dir / f"{problem_file_path.stem}_random_walk.trajectory"
            if output_trajectory_path.exists():
                continue

            problem = ProblemParser(problem_path=problem_file_path, domain=domain).parse_problem()
            grounded_actions = self.create_all_grounded_actions(
                observed_objects=problem.objects, domain=domain, initial_state_fluents=list(problem.initial_state_fluents.keys())
            )
            random_walk_triplets, plan = self.create_random_plan(domain, problem, grounded_actions)
            self.logger.debug("Creating a copy of the problem file with the trajectory as well as a solution_file.")
            with open(output_dir / f"{problem_file_path.stem}_random_walk_{self.max_num_steps_in_trajectory}.solution", "wt") as plan_file:
                plan_file.write("\n".join(plan))

            shutil.copy(problem_file_path, output_dir / f"{problem_file_path.stem}_random_walk.pddl")
            trajectory_exporter.export_to_file(random_walk_triplets, output_dir / f"{problem_file_path.stem}_random_walk_{self.max_num_steps_in_trajectory}.trajectory")

    def generate(self):
        # trajectory_creator = TraceGenerator(self.domain_file_name, self.working_directory_path)
        selected_solver = SolverType.enhsp
        self.create_domain_trajectories()

    def generate_triplets(self, trace):
        """
        Generates state-action-state triplets from sampled PDDL planning traces using macq library.

        Args:
            plan_len (int): The length of each generated plan.
            num_traces (int): The number of traces to generate.

        Returns:
            list: A list of triplets (state1, action, state2), where:
                  - state1 (set): Set of fluents in the first state.
                  - action (str): The action taken.
                  - state2 (set): Set of fluents in the next state.
        """
        triplets = []
        for t in range(len(trace.steps) - 1):
            fluents_in_state1 = {f._serialize()[1:-1] for f in trace.steps[t].state if
                                 trace.steps[t].state[f] is True}
            fluents_in_state2 = {f._serialize()[1:-1] for f in trace.steps[t + 1].state if
                                 trace.steps[t + 1].state[f] is True}

            action = trace.steps[t].action
            if len(action.obj_params) != len(set(action.obj_params)):
                continue
            triplets.append((fluents_in_state1, action, fluents_in_state2))
        return triplets

# traces = TraceGenerator("/Users/omarwattad/Documents/Action Model - Research/rosame/experiment_runner/ztravel_experiments/domain.pddl", Path("/Users/omarwattad/Documents/Action Model - Research/rosame/experiment_runner"),[100])
# traces.generate()
    # def generate(self, plan_len: int, num_traces: int):
    #     """
    #     Generates state-action-state triplets from sampled PDDL planning traces using macq library.
    #
    #     Args:
    #         plan_len (int): The length of each generated plan.
    #         num_traces (int): The number of traces to generate.
    #
    #     Returns:
    #         list: A list of triplets (state1, action, state2), where:
    #               - state1 (set): Set of fluents in the first state.
    #               - action (str): The action taken.
    #               - state2 (set): Set of fluents in the next state.
    #     """
    #     traces = generate.pddl.VanillaSampling(dom=self.domain_file,prob=self.problem_file,plan_len=plan_len,num_traces=num_traces).traces
    #     triplets = []
    #     for trace in traces:
    #         # last step no action
    #         for t in range(len(trace.steps) - 1):
    #             fluents_in_state1 = {f._serialize()[1:-1] for f in trace.steps[t].state if
    #                                  trace.steps[t].state[f] is True}
    #             fluents_in_state2 = {f._serialize()[1:-1] for f in trace.steps[t + 1].state if
    #                                  trace.steps[t + 1].state[f] is True}
    #
    #             action = trace.steps[t].action
    #             if len(action.obj_params) != len(set(action.obj_params)):
    #                 self.skipped_actions += 1
    #                 continue
    #             triplets.append((fluents_in_state1, action, fluents_in_state2))
    #     print(self.skipped_actions)
    #     self.skipped_actions = 0
    #     return triplets

# t = TraceGenerator("/Users/omarwattad/Documents/Action Model - Research/rosame/data/pddl/blocks/domain.pddl","/Users/omarwattad/Documents/Action Model - Research/rosame/data/pddl/blocks/prob01.pddl")
# triplets = t.generate(2, 5)
# print(triplets)