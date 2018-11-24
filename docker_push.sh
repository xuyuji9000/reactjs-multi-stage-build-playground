#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

LATEST_IMAGE="$DOCKER_USERNAME"/$1
DATE_IMAGE="$DOCKER_USERNAME"/$1:`date +%Y-%m-%d`

docker push $LATEST_IMAGE

echo `date +%Y-%m-%d`
dokcer tag  $LATEST_IMAGE $DATE_IMAGE
docker push $DATE_IMAGE