import subprocess
import random

# Define max values
max_drivers = 5
max_num_packages = 10
max_num_trucks = 3
problem_path = "output.pddl"  # Change this to your actual output path

# Define the command
command = (
    f"docker run --rm --platform linux/amd64 "
    f"-v '/Users/omarwattad/Documents/Action Model - Research/rosame':/driverlog "
    f"ubuntu /bin/bash -c '/driverlog/dlgen {random.randint(1, 100)} {random.randint(3, 10)} "
    f"{random.randint(3, max_drivers)} {random.randint(2, max_num_packages)} "
    f"{random.randint(2, max_num_trucks)} 100' > {problem_path}"
)

# Execute the command
result = subprocess.run(command, shell=True, capture_output=True, text=True)

# Print output and errors
if result.stdout:
    print("Output:", result.stdout)
if result.stderr:
    print("Error:", result.stderr)
