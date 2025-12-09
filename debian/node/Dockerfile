ARG FROM_IMAGE
FROM $FROM_IMAGE
LABEL org.opencontainers.image.source = "https://github.com/EugenMayer/docker-image-azure"

ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable && corepack prepare pnpm@latest --activate

# Install sudo, jq, make, m4, wget
RUN apt-get update && apt-get upgrade -y \
  && apt-get install -y \
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
  && rm -rf /tmp/* /var/tmp/* \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && rm -fr /tmp/*.deb \
  && rm -rf /usr/share/man/?? \
  && rm -rf /usr/share/man/??_*
