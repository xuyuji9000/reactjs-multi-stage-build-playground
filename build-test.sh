#!/bin/sh

DOCKERFILE=./Dockerfile.test
DOCKER_IMAGE=$(basename $(pwd)):test

docker build -t $DOCKER_IMAGE -f $DOCKERFILE .