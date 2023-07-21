ARG FROM_IMAGE
FROM $FROM_IMAGE

LABEL org.opencontainers.image.source = "https://github.com/EugenMayer/docker-image-azure"

ARG RUST_VERSION=17.0.7
RUN apt-get update \
  && apt-get install -y gnupg apt-transport-https lsb-release \
  # common tools
  ca-certificates curl wget jq gosu unzip zip gzip tar openssh-client rsync git \
  # support for azure pipelines
  sudo \
  # support for generic makefile
  make m4 \
  # rust compile dependencies
  build-essential cmake clang libsoup2.4-dev libjavascriptcoregtk-4.0-dev librust-pango-dev \
  librust-gdk-sys-dev libwebkit2gtk-4.0-dev libappindicator3-dev libatk1.0-dev \
  # community edition \
  && curl --proto '=https' --tls1.2 -sSf https://sh.rustup.rs/ | sh -s --default-toolchain=$RUST_VERSION \
  && rm -rf /tmp/* /var/tmp/* \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && rm -fr /tmp/*.deb \
  && rm -rf /usr/share/man/?? \
  && rm -rf /usr/share/man/??_* 

ENV PATH=/root/.cargo/.bin:$PATH

RUN rustc --version
