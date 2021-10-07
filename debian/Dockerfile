ARG FROM 
FROM $FROM

# Install sudo, jq, make, m4, wget
RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y \
    # support for azure pipilines
    sudo \
    # support for generic makefile
    make m4 \
    # support for binary download support for toolbelt extensions
    curl wget \
    # support for usual configuration / output parsing during builds
    jq \
    # support for runing under specific users
    gosu \
    git \
  && rm -rf /tmp/* /var/tmp/* \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && rm -fr /tmp/*.deb \
  && rm -rf /usr/share/man/?? \
  && rm -rf /usr/share/man/??_*
