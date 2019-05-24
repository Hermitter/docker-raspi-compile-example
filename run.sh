#!/bin/bash

## Helpful Run Script ##
IMG=pi
CONTAINER=pi_instance
VOLUME=/INSERT_OUTPUT_FOLDER

# Rebuild Docker Image
docker build -t $IMG -f Dockerfile .

# Remake Container
echo "Deleting old container..."
docker rm -f $CONTAINER
echo "Creating new container..."
docker run --name=$CONTAINER -d -v $VOLUME:/volume $IMG

# View Live Logs
docker logs -f $CONTAINER
