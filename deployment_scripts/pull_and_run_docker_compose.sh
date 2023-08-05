#!/bin/bash

# Retrieve the ECR repository URI and image tag
API_ECR_REPOSITORY_URI="066747756520.dkr.ecr.ap-south-1.amazonaws.com/goapp-repo"
UI_ECR_REPOSITORY_URI="066747756520.dkr.ecr.ap-south-1.amazonaws.com/reactapp-repo"
IMAGE_TAG="latest"

# Authenticate Docker with ECR
$(aws ecr get-login --no-include-email --region ap-south-1)

# Authenticate Docker with ECR
$(aws ecr get-login --no-include-email --region ap-south-1)

# Pull the Docker image from ECR
docker pull "${API_ECR_REPOSITORY_URI}:${IMAGE_TAG}"
docker pull "${UI_ECR_REPOSITORY_URI}:${IMAGE_TAG}"

#Run the docker-compose
ls -l
pwd
#cd /home/app
docker-compose  up -d

