FROM weyforth/nodejs-node

MAINTAINER "Mike Farrow" <contact@mikefarrow.co.uk>

ENV DEBIAN_FRONTEND noninteractive

RUN npm config set registry http://registry.npmjs.org/

CMD []
