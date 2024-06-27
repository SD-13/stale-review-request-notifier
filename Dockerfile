# Use a base image
FROM ubuntu:latest

# Set the working directory
WORKDIR /app

# Copy the necessary files to the container
COPY . /app

# Install any dependencies
RUN apt-get update && \
    apt-get install -y requirements.txt

# Set the entry point command
CMD ["python", "src"]