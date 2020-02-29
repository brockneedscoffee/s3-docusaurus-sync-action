FROM debian:stable

LABEL version="0.1.0"

RUN apt-get python

# https://github.com/aws/aws-cli/blob/master/CHANGELOG.rst
ENV AWSCLI_VERSION='1.17.12'
RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

RUN apt-get dh-autoreconf
RUN apt-get nodejs npm
RUN apt-get npm

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
