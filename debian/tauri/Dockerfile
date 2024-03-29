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
  # tauri compile dependencies - also see https://tauri.app/v1/guides/getting-started/prerequisites/#setting-up-linux
  build-essential cmake clang libssl-dev libgtk-3-dev file librsvg2-dev libwebkit2gtk-4.0-dev \
    libsoup2.4-dev libjavascriptcoregtk-4.0-dev librust-pango-dev \
    librust-gdk-sys-dev  libappindicator3-dev libatk1.0-dev \
  && rm -rf /tmp/* /var/tmp/* \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && rm -fr /tmp/*.deb \
  && rm -rf /usr/share/man/?? \
  && rm -rf /usr/share/man/??_*

# see https://rust-lang.github.io/rustup/installation/other.html
RUN curl https://sh.rustup.rs/ -sSf | RUSTUP_HOME=/opt/rustup CARGO_HOME=/opt/rust sh -s -- -y --no-modify-path --default-toolchain=$RUST_TOOLCHAIN_VERSION \
    && echo 'export RUSTUP_HOME=/opt/rustup' | sudo tee -a /etc/profile.d/rust.sh \
    && echo 'export CARGO_HOME=/opt/rust' | sudo tee -a /etc/profile.d/rust.sh \
    && echo 'export PATH=/opt/rust/bin:/opt/cargo/.bin:$PATH' | sudo tee -a /etc/profile.d/rust.sh

ENV PATH=/opt/rust/bin:/opt/cargo/.bin:$PATH
ENV RUSTUP_HOME=/opt/rustup
ENV CARGO_HOME=/opt/rust

RUN cargo install tauri-cli \
    # helps us editing the cargo toml like setting the version during the release
    && cargo install cargo-edit
# ensure every user can read/write the registry so one can use gosu to build tauri apps
RUN find /opt/rust -type d -exec chmod 777 {} \; \
    && find /opt/rust -type f -exec chmod o+rw {} \; \
    && find /opt/rust -exec chown nobody:users {} \;

RUN rustc --version \
    && rustup --version \
    && cargo --version \
    && cargo tauri --version
