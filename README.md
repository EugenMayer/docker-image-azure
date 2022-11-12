## WAT

Building images for azure pipeliens adding the most common tools and most importantly the mandatory `sudo` package.
All the base images are, if possible, official images e.g. `node:12` and so on

- The images are minimal, untempered and designed to be used in your CI, we use azure-pipelines in this regard.
- The images are build every 2 days automatically to ensure the most up-to-date patches are applied. 

### Debian images

Find them all under [https://hub.docker.com/r/eugenmayer/azure/tags](https://hub.docker.com/r/eugenmayer/azure/tags)

NODE
- `eugenmayer/azure:debian-node-8` (based on `node:8`)
- `eugenmayer/azure:debian-node-10` (based on `node:10`)
- `eugenmayer/azure:debian-node-12` (based on `node:12`)
- `eugenmayer/azure:debian-node-14` (based on `node:14`)
- `eugenmayer/azure:debian-node-16` (based on `node:16`)
- `eugenmayer/azure:debian-node-18` (based on `node:18`)

PHP
- `eugenmayer/azure:debian-php-7.3-buster` (based on `php:7.3-buster`)
- `eugenmayer/azure:debian-php-7.4-buster` (based on `php:7.4-buster`)
- `eugenmayer/azure:debian-php-7.4-buster` (based on `php:7.4-bullseye`)
- `eugenmayer/azure:debian-php-8.1-buster` (based on `php:8.1-bullseye`)
- `eugenmayer/azure:debian-php-8.1-buster` (based on `php:8.2-bullseye`)

Golan
- `eugenmayer/azure:debian-golang-1.15-buster` (based on `golang:1.15-buster`)
- `eugenmayer/azure:debian-golang-1.17-buster` (based on `golang:1.17-buster`)
- `eugenmayer/azure:debian-golang-1.18-buster` (based on `golang:1.18-buster`)
- `eugenmayer/azure:debian-golang-1.18-buster` (based on `golang:1.19-buster`)

Java:
- `eugenmayer/azure:debian-openjdk8` (based on `bellsoft/liberica-openjdk-debian:8`)
- `eugenmayer/azure:debian-openjdk11` (based on `bellsoft/liberica-openjdk-debian:11`)
- `eugenmayer/azure:debian-openjdk17` (based on `bellsoft/liberica-openjdk-debian:17`)


# Production images

Those images are usually smaller, e.g. using a JRE

Java:
- `eugenmayer/azure:debian-prod-openjre8` (based on `bellsoft/liberica-openjre-debian:8`)
- `eugenmayer/azure:debian-prod-openjre11` (based on `bellsoft/liberica-openjre-debian:11`)
- `eugenmayer/azure:debian-prod-openjre17` (based on `bellsoft/liberica-openjre-debian:17`)

### Details

See Makefile to see what the base image is and what the target tag is. 

   ./build-image.sh <OS> <FROMIMAGE> <TAG>


## Build

```bash
# all
make debian

# or
make debian-node
make debian-java
make debian-php
make debian-golang
```
