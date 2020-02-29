FROM python:3.6-alpine

LABEL version="0.1.0"

# https://github.com/aws/aws-cli/blob/master/CHANGELOG.rst
ENV AWSCLI_VERSION='1.17.12'
RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

RUN apk add --update nodejs npm
RUN apk add --update npm

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
