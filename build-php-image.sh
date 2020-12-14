#!/bin/bash

set -e

PHP_VERSION=$1
BUILDDIR=$2

cd $BUILDDIR
docker build -t eugenmayer/azure:debian-php-cli-$PHP_VERSION-buster --build-arg PHP_VERSION=$PHP_VERSION .