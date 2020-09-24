ARG FROM 
FROM $FROM

# Install sudo, jq, make, m4, wget
RUN apt-get update && apt-get install -y sudo make m4 curl wget jq \
  && rm -rf /tmp/* /var/tmp/* \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && rm -fr /tmp/*.deb \
  && rm -rf /usr/share/man/?? \
  && rm -rf /usr/share/man/??_*
