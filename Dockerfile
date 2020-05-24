# Dockerfile: hombre-python

FROM python:3.8-alpine3.11

ARG version

LABEL version="${version}"
LABEL description="Customized Python Docker image"
LABEL maintainer="Hombrelab <me@hombrelab.com>"
LABEL inspiration="getting things done my way"

RUN apk add --no-cache \
    bash \
    nano \
    ca-certificates

RUN pip install --no-cache --upgrade pip \
    paho-mqtt