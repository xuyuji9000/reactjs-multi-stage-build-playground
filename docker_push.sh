#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push $1/$2
echo `date +%Y-%m-%d`
docker push $1/$2:`date +%Y-%m-%d`