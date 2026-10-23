FROM 416670754337.dkr.ecr.eu-west-2.amazonaws.com/ci-core-runtime:1.3.1

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN curl --silent --location https://rpm.nodesource.com/setup_24.x  | bash - && \
    dnf install -y  \
    nodejs-24.22.1 \
    unzip-6.0 \
    zip-3.0 && \
    dnf update -y && \
    dnf clean all
