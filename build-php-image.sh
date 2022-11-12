#!/bin/bash

set -e

PHP_VERSION=$1
FROM_IMAGE=$2
BUILDDIR=$3

cd $BUILDDIR
docker build -t eugenmayer/azure:debian-php-cli-$PHP_VERSION-buster --build-arg PHP_VERSION=$PHP_VERSION --build-arg FROM=$FROM_IMAGE .
