## WAT

Building images for azure pipeliens adding the most common tools and most importantly the mandatory `sudo` package.
All the base images are, if possible, official images e.g. `node:12` and so on

- The images are minimal, untempered and designed to be used in your CI, we use azure-pipelines in this regard.
- The images are build every 2 days automatically to ensure the most up-to-date patches are applied. 

### Debian images

Find them all under [https://hub.docker.com/r/eugenmayer/azure/tags](https://hub.docker.com/r/eugenmayer/azure/tags)

NODE
- eugenmayer/azure:debian-node-8 (based on `node:8`)
- eugenmayer/azure:debian-node-10 (based on `node:10`)
- eugenmayer/azure:debian-node-12 (based on `node:12`)

PHP
- eugenmayer/azure:debian-php-7.3-buster (based on `php:7.3-buster`)
- eugenmayer/azure:debian-php-7.4-buster (based on `php:7.4-buster`)

Java:
- eugenmayer/azure:debian-adoptopenjdk-openjdk8 (based on `adoptopenjdk/openjdk8:debian`)
- eugenmayer/azure:debian-adoptopenjdk-openjdk11 (based on `adoptopenjdk/openjdk11:debian`)
- eugenmayer/azure:debian-adoptopenjdk-openjdk11-openj9 (based on `adoptopenjdk/openjdk11-openj9:debian`)

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
```
