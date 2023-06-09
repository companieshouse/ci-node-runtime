ARG CORE_VERSION="latest"
FROM 416670754337.dkr.ecr.eu-west-2.amazonaws.com/ci-core-runtime:${CORE_VERSION}

ARG NODE_VERSION=18.12.1
ARG NPM_VERSION=8.19.2

RUN dnf update -y && \
    dnf install -y  \
    nodejs-$NODE_VERSION \
    npm-$NPM_VERSION \
    unzip \
    zip && \
    dnf clean all