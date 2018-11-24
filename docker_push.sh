#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push $1/$2
docker push $1/$2:`date +%Y-%m-%d`