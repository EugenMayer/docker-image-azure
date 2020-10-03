#!/bin/bash

set -e

OS=$1
BASEIMAGE=$2
TAG=$3

cd $OS
docker build -t eugenmayer/azure:$OS-$TAG --build-arg FROM=$BASEIMAGE .
