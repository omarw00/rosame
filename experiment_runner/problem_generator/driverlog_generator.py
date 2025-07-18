import random
import subprocess
import sys
from pathlib import Path


def generate_numeric_problems(output_directory: Path, num_probs_per_difficulty: int = 100):
    # The following code is a part of the driverlog_generator.py file
    # It is used to generate problems for the driverlog domain
    # The code is used to generate problems for learning purposes
    # It is not used in the main application
    print("generating numeric problems for the driverlog domain...")
    for i in range(num_probs_per_difficulty):
        # Generate problems for the easy difficulty
        problem_name = f"pfile{i}.pddl"
        problem_path = output_directory / problem_name
        generate_problem_command = f"./dlgen -n {random.randint(1, 100)} 3 {random.randint(2, 4)} {random.randint(2, 10)} {random.randint(2, 5)} 100 > {problem_path}"
        print(f"generating problem {problem_name}...")
        subprocess.check_output(generate_problem_command, shell=True)

    for i in range(num_probs_per_difficulty):
        # Generate problems for the medium difficulty
        problem_name = f"pfile{num_probs_per_difficulty + i}.pddl"
        problem_path = output_directory / problem_name
        generate_problem_command = f"./dlgen -n {random.randint(1, 100)} {random.randint(5, 15)} {random.randint(3, 5)} {random.randint(3, 15)} {random.randint(3, 8)} 100 > {problem_path}"
        print(f"generating problem {problem_name}...")
        out = subprocess.check_output(generate_problem_command, shell=True)


def generate_strips_problems(output_directory: Path, max_num_trucks: int = 8, max_num_packages: int = 50,
                             max_drivers: int = 8):
    print("Generating propositional problems for the Driverlog domain...")
    for i in range(20):
        problem_name = f"pfile{i}.pddl"
        problem_path = output_directory / problem_name

        generate_problem_command = [
            "docker", "run", "--rm", "--platform", "linux/amd64",
            "-v", "/Users/omarwattad/Documents/Action-Model-Research/rosame/experiment_runner/problem_generator:/driverlog",
            "ubuntu", "/bin/bash", "-c",
            f"/driverlog/dlgen {random.randint(1, 100)} {random.randint(3, 10)} {random.randint(3, max_drivers)} {random.randint(2, max_num_packages)} {random.randint(2, max_num_trucks)} 100"
        ]

        print(f"Generating problem {problem_name}...")

        # Open the file and write output to it
        with open(problem_path, "w") as output_file:
            process = subprocess.run(generate_problem_command, stdout=output_file, stderr=subprocess.PIPE)

        if process.returncode == 0:
            print(f"Problem {problem_name} generated successfully.")
        else:
            print(f"Error generating {problem_name}:\n{process.stderr.decode()}")



def main():
    output_directory = sys.argv[1]
    if sys.argv[2] == "numeric":
        generate_numeric_problems(Path(output_directory))

    elif sys.argv[2] == "strips":
        generate_strips_problems(Path(output_directory))


if __name__ == "__main__":
    main()
