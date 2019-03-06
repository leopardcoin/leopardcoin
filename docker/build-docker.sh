#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-leopardcoinpay/leopardcoind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/leopardcoind docker/bin/
cp $BUILD_DIR/src/leopardcoin-cli docker/bin/
cp $BUILD_DIR/src/leopardcoin-tx docker/bin/
strip docker/bin/leopardcoind
strip docker/bin/leopardcoin-cli
strip docker/bin/leopardcoin-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
