FROM golang:1.6.2-alpine
MAINTAINER Ryan Hartje <ryan@ryanhartje.com>

ENV GOPATH="/go"

RUN apk --update add git \
    make && \ 
    mkdir -p $GOPATH/src/github.com/hashicorp/vault && \
    git clone https://github.com/hashicorp/vault \
    $GOPATH/src/github.com/hashicorp/vault && \
    cd $GOPATH/src/github.com/hashicorp/vault && \
    go get ./... && \
    make bootstrap && \
    make && \
    mkdir /etc/vault

COPY files/etc/vault/config.json /etc/vault/config.json

EXPOSE 8200 8500 
ENTRYPOINT ["/go/bin/vault","server","-config=/etc/vault/config.json","--log-level=debug"]
