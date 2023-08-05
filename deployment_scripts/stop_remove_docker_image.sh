#|/bin/bash

# ## Retrieve the ECR repository URI and image tag
# API_ECR_REPOSITORY_URI="066747756520.dkr.ecr.ap-south-1.amazonaws.com/goapp-repo"
# UI_ECR_REPOSITORY_URI="066747756520.dkr.ecr.ap-south-1.amazonaws.com/reactapp-repo"
# IMAGE_TAG="latest"

# # Authenticate Docker with ECR
# $(aws ecr get-login --no-include-email --region ap-south-1)

# stop the docker compose
ls -l
docker-compose -f  ./docker-compose.yml down --rmi all

# Pull the Docker image from ECR

# "$(docker ps -a | grep ir-api)" ] && docker stop ir-api