debian: debian-node debian-java debian-java-prod debian-php debian-golang
	echo "done building debian image"

debian-node:
	./build-image.sh debian node:8 node-8
	./build-image.sh debian node:10 node-10
	./build-image.sh debian node:12 node-12-buster
	./build-image.sh debian node:14 node-14-buster
	./build-image.sh debian node:16 node-16-buster
	
debian-golang:
	./build-image.sh debian golang:1.15-buster golang-1.15-buster
	./build-image.sh debian golang:1.17-buster golang-1.17-buster
	./build-image.sh debian golang:1.18rc1-buster golang-1.18-buster
	./build-image.sh debian golang:1.19-buster golang-1.19-buster
	./build-image.sh debian golang:1.19-bullseye golang-1.19-bullseye

debian-java:
	./build-image.sh debian bellsoft/liberica-openjdk-debian:8 openjdk8
	./build-image.sh debian bellsoft/liberica-openjdk-debian:11 openjdk11
	./build-image.sh debian bellsoft/liberica-openjdk-debian:17 openjdk17

debian-java-prod:
	./build-image.sh debian-prod bellsoft/liberica-openjre-debian:8 openjre8
	./build-image.sh debian-prod bellsoft/liberica-openjre-debian:11 openjre11
	./build-image.sh debian-prod bellsoft/liberica-openjre-debian:17 openjre17
	
debian-php:
	./build-php-image.sh 7.3 debian/php
	./build-php-image.sh 7.4 debian/php
	./build-php-image.sh 8.1 debian/php

push:
	docker push eugenmayer/azure --all-tags
