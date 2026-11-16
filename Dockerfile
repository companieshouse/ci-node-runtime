FROM 416670754337.dkr.ecr.eu-west-2.amazonaws.com/ci-core-runtime:1.4.0

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN curl --silent --location https://rpm.nodesource.com/setup_24.x  | bash - && \
    dnf install -y  \
    nodejs-24.22.3 \
    unzip-6.0 \
    zip-3.0 && \
    dnf update -y && \
    dnf clean all
