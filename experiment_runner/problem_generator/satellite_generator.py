import random
import subprocess
import sys
from pathlib import Path


def generate_problems(output_directory: Path, num_probs_per_difficulty: int = 100):
    # The following code is a part of the driverlog_generator.py file
    # It is used to generate problems for the driverlog domain
    # The code is used to generate problems for learning purposes
    # It is not used in the main application
    print("generating problems for the satellite domain...")
    for i in range(num_probs_per_difficulty):
        # Generate problems for the easy difficulty
        problem_name = f"pfile{i}.pddl"
        problem_path = output_directory / problem_name
        generate_problem_command = f"./satgen -n {random.randint(1, 100)} {random.randint(1, 4)} 3 {random.randint(3, 4)} {random.randint(3, 5)} {random.randint(4, 10)} > {problem_path}"
        print(f"generating problem {problem_name}...")
        subprocess.check_output(generate_problem_command, shell=True)

    for i in range(num_probs_per_difficulty):
        # Generate problems for the medium difficulty
        problem_name = f"pfile{num_probs_per_difficulty + i}.pddl"
        problem_path = output_directory / problem_name
        generate_problem_command = f"./satgen -n {random.randint(1, 100)} 5 3 {random.randint(3, 5)} {random.randint(3, 5)} {random.randint(10, 25)} > {problem_path}"
        print(f"generating problem {problem_name}...")
        subprocess.check_output(generate_problem_command, shell=True)

def generate_strips_problems(output_directory: Path, num_probs_per_difficulty: int = 100):
    print("generating strips problems...")
    for i in range(num_probs_per_difficulty):
        problem_name = f"pfile{i}.pddl"
        problem_path = output_directory / problem_name
        seed = random.randint(1, 100)
        satellites = 5
        max_instruments = 3
        modes = random.randint(3, 5)
        targets = random.randint(3, 5)
        observations = random.randint(10, 25)
        generate_problem_command = [
            "docker", "run", "--rm", "--platform", "linux/amd64",
            "-v",
            "/Users/omarwattad/Documents/Action-Model-Research/rosame/experiment_runner/problem_generator:/probgen",
            "ubuntu", "/bin/bash", "-c",
            f"/probgen/satgen {seed} {satellites} {max_instruments} {modes} {targets} {observations}"
        ]
        print(f"generating problem {problem_name}...")

        with open(problem_path, "w") as output_file:
            process = subprocess.run(generate_problem_command, stdout=output_file, stderr=subprocess.PIPE)

        if process.returncode == 0:
            print(f"Problem {problem_name} generated successfully.")
        else:
            print(f"Error generating {problem_name}:\n{process.stderr.decode()}")



def main():
    output_directory = sys.argv[1]
    # generate_problems(Path(output_directory))
    generate_strips_problems(Path(output_directory),20)

if __name__ == "__main__":
    main()
