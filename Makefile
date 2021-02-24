debian: debian-node debian-java debian-php debian-golang
	echo "done building debian image"

debian-node:
	./build-image.sh debian node:8 node-8
	./build-image.sh debian node:10 node-10
	./build-image.sh debian node:12 node-12-buster

debian-golang:
	./build-image.sh debian golang:1.15-buster golang-1.15-buster

debian-java:
	./build-image.sh debian adoptopenjdk/openjdk8:debian adoptopenjdk-openjdk8
	./build-image.sh debian adoptopenjdk/openjdk11:debian adoptopenjdk-openjdk11
	./build-image.sh debian adoptopenjdk/openjdk11-openj9:debian adoptopenjdk-openjdk11-openj9

debian-php:
	./build-php-image.sh 7.3 debian/php
	./build-php-image.sh 7.4 debian/php

push:
	docker push eugenmayer/azure --all-tags
