ARG CORE_VERSION="latest"
FROM 416670754337.dkr.ecr.eu-west-2.amazonaws.com/ci-core-runtime:${CORE_VERSION}

RUN curl --silent --location https://rpm.nodesource.com/setup_20.x  | bash - && \
    dnf update -y && \
    dnf install -y  \
    nodejs \
    unzip \
    zip && \
    dnf clean all