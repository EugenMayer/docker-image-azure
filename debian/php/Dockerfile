ARG FROM_IMAGE
FROM $FROM_IMAGE

LABEL org.opencontainers.image.source = "https://github.com/EugenMayer/docker-image-azure"

ARG PHP_VERSION

RUN apt-get update \
  && apt-get install -y gnupg apt-transport-https lsb-release \
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
  && echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" >> /etc/apt/sources.list.d/packages.sury.org.list \
  && echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main/debug" >> /etc/apt/sources.list.d/packages.sury.org-debug.list \
  && echo "new GPG key due to https://www.patreon.com/posts/dpa-new-signing-25451165" \
  && curl https://packages.sury.org/php/apt.gpg -o /etc/apt/trusted.gpg.d/sury.gpg \
  && apt update \
  && apt-get install -y php${PHP_VERSION}-cli php${PHP_VERSION}-zip \
  # install composer
  && curl https://getcomposer.org/installer -o /tmp/composerinstaller \
  && php /tmp/composerinstaller --install-dir=/usr/local/bin --filename=composer \
  && rm /tmp/composerinstaller \
  && rm -rf /tmp/* /var/tmp/* \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && rm -fr /tmp/*.deb \
  && rm -rf /usr/share/man/?? \
  && rm -rf /usr/share/man/??_* 
