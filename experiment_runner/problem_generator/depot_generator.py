import random
import subprocess
import sys
from pathlib import Path


def generate_problems(output_directory: Path, num_probs_per_difficulty: int = 100):
    print("generating problems for the depot domain...")
    for i in range(num_probs_per_difficulty):
        # Generate problems for the easy difficulty
        problem_name = f"pfile{i+ 76}.pddl"
        problem_path = output_directory / problem_name
        generate_problem_command = f"./depotgen {random.randint(1, 100)} -n -w 100 -c 400 1 2 2 3 3 {random.randint(2, 15)}"
        print(f"generating problem {problem_name}...")
        result = subprocess.check_output(generate_problem_command, shell=True)
        _export_problem(problem_path, result)

    for i in range(num_probs_per_difficulty):
        # Generate problems for the medium difficulty
        problem_name = f"pfile{num_probs_per_difficulty + i + 76}.pddl"
        problem_path = output_directory / problem_name
        generate_problem_command = f"./depotgen {random.randint(1, 100)} -n -w 100 -c 400 3 3 2 {random.randint(6, 15)} {random.randint(6, 15)} {random.randint(2, 30)}"
        print(f"generating problem {problem_name}...")
        result = subprocess.check_output(generate_problem_command, shell=True)
        _export_problem(problem_path, result)

def generate_strips_problems(output_directory: Path, num_probs_per_difficulty: int = 50):
    print("generating problems for the depot domain...")
    for i in range(num_probs_per_difficulty):
        # Generate problems for the medium difficulty
        problem_name = f"pfile{i}.pddl"
        problem_path = output_directory / problem_name
        seed = random.randint(1, 100)
        depots = 3
        distrubutors = 3
        trucks = 2
        pallets = random.randint(6, 15)
        hoists = random.randint(6, 15)
        crates = random.randint(2, 30)
        generate_problem_command = [
            "docker", "run", "--rm", "--platform", "linux/amd64",
            "-v",
            "/Users/omarwattad/Documents/Action-Model-Research/rosame/experiment_runner/problem_generator:/probgen",
            "ubuntu", "/bin/bash", "-c",
            f"/probgen/depotgen {seed} {depots} {distrubutors} {trucks} {pallets} {hoists} {crates}",
        ]
        print(f"generating problem {problem_name}...")

        with open(problem_path, "w") as output_file:
            process = subprocess.run(generate_problem_command, stdout=output_file, stderr=subprocess.PIPE)

        if process.returncode == 0:
            print(f"Problem {problem_name} generated successfully.")
        else:
            print(f"Error generating {problem_name}:\n{process.stderr.decode()}")


def _export_problem(problem_path, result):
    with open(problem_path, "wt") as problem_file:
        problem_file.write(result.decode("utf-8").lower())


def main():
    output_directory = sys.argv[1]
    # generate_problems(Path(output_directory))
    generate_strips_problems(Path(output_directory),20)


if __name__ == "__main__":
    main()
