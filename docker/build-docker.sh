#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-genix-project/genixd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/genixd docker/bin/
cp $BUILD_DIR/src/genix-cli docker/bin/
cp $BUILD_DIR/src/genix-tx docker/bin/
strip docker/bin/genixd
strip docker/bin/genix-cli
strip docker/bin/genix-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
