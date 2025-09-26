ARG BASE_VERSION="noble"

FROM docker.io/ubuntu:$BASE_VERSION

ARG BASE_VERSION

LABEL org.opencontainers.image.base.name="ghcr.io/eduardoteles17/containers/ubuntu:$BASE_VERSION"
LABEL org.opencontainers.image.documentation="https://github.com/eduardoteles17/containers/tree/main/apps/ubuntu/README.md"
LABEL org.opencontainers.image.source="https://github.com/eduardoteles17/containers/tree/main/apps/ubuntu"
LABEL org.opencontainers.image.title="ubuntu"
LABEL org.opencontainers.image.version="$BASE_VERSION"

COPY ./rootfs /

ENV PATH="$PATH:/opt/app/scripts"
