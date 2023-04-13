FROM 416670754337.dkr.ecr.eu-west-2.amazonaws.com/ci-core-runtime:1.0.0

ARG NODE_VERSION=latest
ARG NPM_VERSION=8.19.2

RUN dnf update -y && \
    dnf install -y  \
    nodejs-$NODE_VERSION \
    npm-$NPM_VERSION \
    unzip \
    zip && \
    dnf clean all