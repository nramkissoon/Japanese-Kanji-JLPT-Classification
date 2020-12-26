#!/bin/bash

echo "Building Docker image..."
docker build -t kanji-classification-system-image .

echo "Running Docker container..."
docker container run --name kanji-classification-system kanji-classification-system-image

# Cleanup
echo "Cleaning up Docker container and image..."
docker rm kanji-classification-system
docker image rm kanji-classification-system-image
echo "Finished."