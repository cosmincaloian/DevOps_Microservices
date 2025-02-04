#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=cosmincaloian/devops:latest

# Step 2
kubectl run devops --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl wait pods devops --for condition=Ready --timeout=90s
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/devops --address 0.0.0.0 8000:80

