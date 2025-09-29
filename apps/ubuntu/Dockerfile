ARG BASE_VERSION="noble"

FROM docker.io/ubuntu:$BASE_VERSION

ARG BASE_VERSION

LABEL org.opencontainers.image.base.name="ghcr.io/eduardoteles17/ubuntu:$BASE_VERSION"
LABEL org.opencontainers.image.documentation="https://github.com/eduardoteles17/containers/tree/main/apps/ubuntu/README.md"
LABEL org.opencontainers.image.source="https://github.com/eduardoteles17/containers/tree/main/apps/ubuntu"
LABEL org.opencontainers.image.title="ubuntu"
LABEL org.opencontainers.image.version="$BASE_VERSION"

COPY ./rootfs /

ENV PATH="$PATH:/opt/app/scripts"

## Setup mise
ENV MISE_BASE_DIR="/opt/mise"
ENV MISE_DATA_DIR="$MISE_BASE_DIR"
ENV MISE_CONFIG_DIR="$MISE_BASE_DIR/config"
ENV MISE_CACHE_DIR="$MISE_BASE_DIR/cache"
ENV MISE_INSTALL_PATH="$MISE_BASE_DIR/bin/mise"
ENV PATH="$MISE_BASE_DIR/shims:$MISE_BASE_DIR/bin:$PATH"

RUN pkg install curl git ca-certificates build-essential && \
    curl https://mise.run | sh
