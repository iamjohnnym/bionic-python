ARG PYTHON_VERSION=3.7

FROM ubuntu:18.04 AS base

ENV DEBIAN_FRONTEND noninteractive

# Add LANE default to en_US.UTF-8
ENV LANG en_US.UTF-8

FROM python:${PYTHON_VERSION}-alpine
COPY --from=base . .

# Build-time metadata as defined at http://label-schema.org
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

LABEL org.label-schema.build-date=${BUILD_DATE} \
      org.label-schema.name="Bionic-Python" \
      org.label-schema.description="Ubuntu 18.04 Bionic Beaver with Python ${VERSION}" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/iamjohnnym/bionic-python" \
      org.label-schema.vendor="iamjohnnym" \
      org.label-schema.version=${VERSION} \
      org.label-schema.schema-version="1.0" \
      authors="John Martin 'johnny@iamjohnny.com'" \
      repository.iamjohnnym/python-bionic:${PYTHON_VERSION}=""
