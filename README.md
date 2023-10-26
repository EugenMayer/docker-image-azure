[![build_java](https://github.com/EugenMayer/docker-image-azure/actions/workflows/build_java.yml/badge.svg)](https://github.com/EugenMayer/docker-image-azure/actions/workflows/build_java.yml)

## WAT

Nightly builds of docker images for azure pipelines adding the most common tools and most importantly the mandatory `sudo` package.
All the base images are, if possible, official images e.g. `node:12` and so on

- The images are minimal, untempered and designed to be used in your CI, we use azure-pipelines in this regard.
- The images are build every day to ensure the most up-to-date patches are applied. 

### Debian images

Find them all under [github images](https://github.com/EugenMayer/docker-image-azure/pkgs/container/azure/versions)

There are 
 - node `10`,`16`,`18`,`20`  builds
 - php `7.3`, `8.1`, `8.2` builds
 - java `8`, `11`,`17`, `21`  builds
 - golang `1.19`-`1.21` builds
 - tauri with node [`18`] and rust [`1.71.0`] builds
 - debian `bullseye`, `bookwork` builds

Usually builds are available for `buster`,  `bullseye` and `bookworm`, but check the [tag list](https://github.com/EugenMayer/docker-image-azure/pkgs/container/azure/versions) yourself for all the details.
