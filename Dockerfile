FROM node:12.11.1-slim

LABEL version="0.1.0"

RUN npm i python
# https://github.com/aws/aws-cli/blob/master/CHANGELOG.rst
ENV AWSCLI_VERSION='1.17.12'
RUN python -m pip install awscli=${AWSCLI_VERSION}


ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
