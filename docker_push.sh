#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push "$DOCKER_USERNAME"/$1
echo `date +%Y-%m-%d`
docker push "$DOCKER_USERNAME"/$1:`date +%Y-%m-%d`