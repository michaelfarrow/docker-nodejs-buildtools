FROM ruby:2.1

MAINTAINER "Mike Farrow" <contact@mikefarrow.co.uk>

ENV DEBIAN_FRONTEND noninteractive

WORKDIR /tmp

RUN apt-get update -y && \
    apt-get install -y curl git && \
    curl -sL https://deb.nodesource.com/setup | bash -  && \
    apt-get install -y nodejs make && \
    apt-get remove --purge curl -y && \
    apt-get clean

RUN npm config set registry http://registry.npmjs.org/

ENV BUNDLE_JOBS=2 \
    BUNDLE_PATH=/bundle

VOLUME /bundle

WORKDIR /data/src

CMD []
