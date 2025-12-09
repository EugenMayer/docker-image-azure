[![build_java](https://github.com/EugenMayer/docker-image-azure/actions/workflows/build_java.yml/badge.svg)](https://github.com/EugenMayer/docker-image-azure/actions/workflows/build_java.yml)

## WAT

Nightly builds of docker images for azure pipelines adding the most common tools and most importantly the mandatory `sudo` package.
All the base images are, if possible, official images e.g. `node:12` and so on

- The images are minimal, untempered and designed to be used in your CI, we use azure-pipelines in this regard.
- The images are build every day to ensure the most up-to-date patches are applied. 

### Debian images

Find them all under [github images](https://github.com/EugenMayer/docker-image-azure/pkgs/container/azure/versions)

There are 
 - node `16`,`18`,`20`,`22`,`24`  builds
 - php `7.3`, `8.1`, `8.2`, `8.3`, `8.4` builds
 - java `8`, `11`,`17`, `21`, `23`  builds
 - golang `1.21`-`1.24` builds
 - tauri with node [`24`] and rust [`1.78.0`] builds
 - debian `bullseye`, `bookworm` builds

Usually builds are available for `bullseye` and `bookworm`, but check the [tag list](https://github.com/EugenMayer/docker-image-azure/pkgs/container/azure/versions) yourself for all the details.
