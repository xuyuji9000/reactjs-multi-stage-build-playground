#/bin/sh

DOCKER_IMAGE=$(basename $(pwd)):test
CONTAINER_NAME=$(basename $(pwd))

docker run -i -v $(pwd)/coverage:/tmp/coverage --name $CONTAINER_NAME --rm $DOCKER_IMAGE /bin/sh << COMMANDS
ls ./coverage
mv ./coverage/* /tmp/coverage
COMMANDS
