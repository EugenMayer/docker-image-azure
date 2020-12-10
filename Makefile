debian: debian-node debian-java debian-php
	echo "done building debian image"

debian-node:
	./build-image.sh debian node:8 node-8
	./build-image.sh debian node:10 node-10
	./build-image.sh debian node:12 node-12-buster

debian-java:
	./build-image.sh debian adoptopenjdk/openjdk8:debian adoptopenjdk-openjdk8
	./build-image.sh debian adoptopenjdk/openjdk11:debian adoptopenjdk-openjdk11
	./build-image.sh debian adoptopenjdk/openjdk11-openj9:debian adoptopenjdk-openjdk11-openj9

debian-php:
	./build-image.sh debian php:7.3-buster php-7.3-buster
	./build-image.sh debian php:7.4-buster php-7.4-buster

push:
	docker push eugenmayer/azure
