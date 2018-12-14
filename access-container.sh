#!/bin/sh

DOCKER_IMAGE=$(basename $(pwd)):test

docker run -it --rm $DOCKER_IMAGE /bin/sh
