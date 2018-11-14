ARG PYTHON_VERSION=3.7

FROM ubuntu:18.04 AS base

ENV DEBIAN_FRONTEND noninteractive

# Add locale profiles and default to en_US.UTF-8
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

FROM python:${PYTHON_VERSION}-alpine
COPY --from=base . .

LABEL authors="John Martin 'johnny@iamjohnny.com'"
LABEL repository.iamjohnnym/python-bionic:${PYTHON_VERSION}=""
