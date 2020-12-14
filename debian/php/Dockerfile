ARG PHP_VERSION
FROM debian:buster
RUN apt-get update \
  && apt-get install -y gnupg curl apt-transport-https lsb-release git \
  && echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" >> /etc/apt/sources.list.d/packages.sury.org.list \
  && echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main/debug >> /etc/apt/sources.list.d/packages.sury.org-debug.list" \
  && echo "new GPG key due to https://www.patreon.com/posts/dpa-new-signing-25451165" \
  && curl https://packages.sury.org/php/apt.gpg -o /tmp/sury.gpg \
  && apt-key add /tmp/sury.gpg && rm /tmp/sury.gpg

RUN apt-get install -y php${PHP_VERSION}-cli php${PHP_VERSION}-zip

# install composer
RUN curl https://getcomposer.org/installer -o /tmp/composerinstaller \
  && php /tmp/composerinstaller --install-dir=/usr/local/bin --filename=composer \
  && rm /tmp/composerinstaller \
  && rm -rf /tmp/* /var/tmp/* \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && rm -fr /tmp/*.deb \
  && rm -rf /usr/share/man/?? \
  && rm -rf /usr/share/man/??_* 
