#!/bin/bash

set -e

OS=$1
BASEIMAGE=$2
TAG=$3
BUILDDIR=${4:-$OS}

cd $BUILDDIR
docker build -t eugenmayer/azure:$OS-$TAG --build-arg FROM_IMAGE=$BASEIMAGE .
