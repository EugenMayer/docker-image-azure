ARG FROM_IMAGE
FROM $FROM_IMAGE

LABEL org.opencontainers.image.source = "https://github.com/EugenMayer/docker-image-azure"

ARG RUST_TOOLCHAIN_VERSION=stable
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
  && rm -rf /tmp/* /var/tmp/* \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && rm -fr /tmp/*.deb \
  && rm -rf /usr/share/man/?? \
  && rm -rf /usr/share/man/??_*

# see https://rust-lang.github.io/rustup/installation/other.html
RUN curl https://sh.rustup.rs/ -sSf | RUSTUP_HOME=/opt/rustup CARGO_HOME=/opt/rust sh -s -- -y --no-modify-path --default-toolchain=$RUST_TOOLCHAIN_VERSION \
    && echo 'export RUSTUP_HOME=/opt/rustup' | sudo tee -a /etc/profile.d/rust.sh \
    && echo 'export PATH=/opt/rust/bin:$PATH' | sudo tee -a /etc/profile.d/rust.sh

RUN cargo install tauri-cli

ENV PATH=/opt/rust/bin:$PATH
ENV RUSTUP_HOME=/opt/rustup
