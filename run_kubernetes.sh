#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
export DOCKER_PATH=fabiotavarespr/udacity-devopsenginner-project4

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --generator=run-pod/v1 udacity-project4 --image=$DOCKER_PATH --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/udacity-project4 8000:80