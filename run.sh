#!/bin/bash

## Helpful Run Script ##
IMG=pi3_img
CONTAINER=pi_instance

# Rebuild Docker Image
docker build -t $IMG -f Dockerfile .

# Remake Container
echo "Deleting old container..."
docker rm -f $CONTAINER
echo "Creating new container..."
docker run --name=$CONTAINER -d -v /INSERT_OUTPUT_FOLDER:/volume $IMG

# View Live Logs
docker logs -f $CONTAINER