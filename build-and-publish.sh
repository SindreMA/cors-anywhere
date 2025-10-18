#!/bin/bash

set -e

IMAGE_NAME="registry.k8s.sindrema.com/images/cors-anywhere"
TAG="${1:-latest}"

echo "Building Docker image: ${IMAGE_NAME}:${TAG}"
docker build -t "${IMAGE_NAME}:${TAG}" .

echo "Pushing Docker image: ${IMAGE_NAME}:${TAG}"
docker push "${IMAGE_NAME}:${TAG}"

echo "Build and publish complete!"
