#/bin/sh

DOCKER_IMAGE=$(basename $(pwd)):test
CONTAINER_NAME=$(basename $(pwd))
COVERAGE_REPORT=coverage

mkdir $COVERAGE_REPORT

docker run -i -v $(pwd)/${COVERAGE_REPORT}:/tmp/coverage --name $CONTAINER_NAME --rm $DOCKER_IMAGE /bin/sh << COMMANDS
ls -lat ./coverage
chmod -R 777 ./coverage
ls -lat ./coverage
mv ./coverage/* /tmp/coverage
COMMANDS
