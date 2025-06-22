FROM ubuntu:latest

# Set working directory
WORKDIR /app

# Copy dlgen binary to container
COPY Experiment /app/dlgen

# Ensure dlgen is executable
RUN chmod +x /app/dlgen

# Install any necessary dependencies
RUN apt update && apt install -y python3 python3-pip

# Copy the Python script into the container
COPY Experiment /app/driverlog_generator.py

# Set entrypoint to run the script
ENTRYPOINT ["python3", "/app/driverlog_generator.py"]
