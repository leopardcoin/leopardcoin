FROM debian:stretch
LABEL maintainer="LeopardCoin Developers <dev@leopardcoin.org>"
LABEL description="Dockerised LeopardCoinCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
