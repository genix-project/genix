FROM debian:stretch
LABEL maintainer="genix Developers <dev@genix.cx>"
LABEL description="Dockerised genixCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
