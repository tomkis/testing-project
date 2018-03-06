#!/bin/bash

BUILD="tomkis/testing-project:$CIRCLE_BUILD_NUM"

docker build -t "$BUILD" .

# USER AND PASS DEFINED IN CCI VARIABLES
docker login -u $DOCKERHUB_USER -p $DOCKERHUB_PASS
docker push "$BUILD"