FROM alpine:latest
MAINTAINER Ryan Hartje <ryan@ryanhartje.com>

ENV GOPATH="/usr/lib"
ENV GOROOT="/usr/lib/go"

RUN apk --update add git \
    go \
    make && \ 
    mkdir -p $GOPATH/src/github.com/hashicorp/vault && \
    git clone https://github.com/hashicorp/vault \
    $GOPATH/src/github.com/hashicorp/vault && \
    cd $GOPATH/src/github.com/hashicorp/vault && \
    go get ./... && \
    make bootstrap && \
    make

EXPOSE 8200 8500 
ENTRYPOINT ["/usr/local/bin/vault"]
