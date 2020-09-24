debian: debian-node debian-java debian-php
	echo "done building debian image"

debian-node:
	./build.sh debian node:8 node-8
	./build.sh debian node:12 node-10
	./build.sh debian node:12 node-12

debian-java:
	./build.sh debian adoptopenjdk/openjdk8:debian adoptopenjdk-openjdk8
	./build.sh debian adoptopenjdk/openjdk11:debian adoptopenjdk-openjdk11
	./build.sh debian adoptopenjdk/openjdk11-openj9:debian adoptopenjdk-openjdk11-openj9

debian-php:
	./build.sh debian php:7.3-buster php-7.3-buster
	./build.sh debian php:7.4-buster php-7.4-buster

push:
	docker push eugenmayer/azure
