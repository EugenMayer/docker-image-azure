ARG FROM_IMAGE
FROM $FROM_IMAGE

LABEL org.opencontainers.image.source = "https://github.com/EugenMayer/docker-image-azure"

ARG GRAALVM_VERSION=17.0.7
RUN apt-get update \
  && apt-get install -y gnupg apt-transport-https lsb-release \
  # needed for installing graalvm
  ca-certificates curl unzip zip gzip tar gcc make zlib1g-dev \
  # support for azure pipelines
  sudo \
  # support for generic makefile
  make m4 \
  # support for binary download support for tool belt extensions
  curl wget \
  # support for usual configuration / output parsing during builds
  jq \
  # support for running under specific users
  gosu \
  # general tools
  git openssh-client rsync \
  && mkdir -p /opt \
  # community edition \
  && curl -L "https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${GRAALVM_VERSION}/graalvm-community-jdk-${GRAALVM_VERSION}_linux-x64_bin.tar.gz" -o /opt/graalvm.tgz \
  # oracle edition
  # && curl -L https://download.oracle.com/graalvm/${GRAALVM_VERSION}/latest/graalvm-jdk-${GRAALVM_VERSION}_linux-x64_bin.tar.gz -o /opt/graalvm.tgz \
  && cd /opt \
  && tar -xzf graalvm.tgz && rm graalvm.tgz \
  && mv graalvm* graalvm \
  && rm -rf /tmp/* /var/tmp/* \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && rm -fr /tmp/*.deb \
  && rm -rf /usr/share/man/?? \
  && rm -rf /usr/share/man/??_* 

ENV PATH=/opt/graalvm/bin:$PATH
ENV JAVA_HOME=/opt/graalvm
ENV GRAALVM_HOME=/opt/graalvm

RUN java --version \
    gcc --version \
    ldd --version
