## WAT

Building images for azure pipeliens adding the most common tools and most importantly the mandatory `sudo` package.
All the base images are, if possible, official images e.g. `node:12` and so on

Those images are designed to be used in your CI, we use azure-pipelines in this regard

### Debian images

Find them all under [https://hub.docker.com/r/eugenmayer/azure/tags](https://hub.docker.com/r/eugenmayer/azure/tags)

NODE
- eugenmayer/azure:debian-node-8
- eugenmayer/azure:debian-node-10
- eugenmayer/azure:debian-node-12

PHP
- eugenmayer/azure:debian-php-7.3-buster
- eugenmayer/azure:debian-php-7.4-buster

Java:
- eugenmayer/azure:debian-adoptopenjdk-openjdk8-debian
- eugenmayer/azure:debian-adoptopenjdk-openjdk11
- eugenmayer/azure:debian-adoptopenjdk-openjdk11-openj9

### Details

See Makefile to see what the base image is and what the target tag is. 

   ./build.sh <OS> <FROMIMAGE> <TAG>


## Build

```bash
# all
make debian

# or
make debian-node
make debian-java
make debian-php
```
