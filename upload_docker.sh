#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=cosmincaloian/devops:1.0.0

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag devops:latest $dockerpath


# Step 3:
docker push $dockerpath
