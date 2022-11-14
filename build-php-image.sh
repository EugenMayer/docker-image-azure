#!/bin/bash

set -e

PHP_VERSION=$1
DEBIAN_RELEASE=$2
BUILDDIR=$3

cd $BUILDDIR
docker build -t eugenmayer/azure:debian-php-cli-$PHP_VERSION-$DEBIAN_RELEASE --build-arg PHP_VERSION=$PHP_VERSION --build-arg FROM_IMAGE=debian:$DEBIAN_RELEASE .
