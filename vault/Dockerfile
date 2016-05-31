FROM golang:1.6.2-alpine
MAINTAINER Ryan Hartje <ryan@ryanhartje.com>

ENV GOPATH="/go"

RUN apk --update add git \
    make \ 
    libcap && \
    mkdir -p $GOPATH/src/github.com/hashicorp/vault && \
    git clone https://github.com/hashicorp/vault \
    $GOPATH/src/github.com/hashicorp/vault && \
    cd $GOPATH/src/github.com/hashicorp/vault && \
    go get ./... && \
    make bootstrap && \
    make && \
    # setcap cap_ipc_lock=+ep $(readlink -f $(which vault)) && \
    mkdir /etc/vault

COPY files/etc/vault/config.json /etc/vault/config.json
COPY files/bootstrap.sh /root/bootstrap.sh

EXPOSE 8200 8500 
#ENTRYPOINT ["/go/bin/vault","server","-config=/etc/vault/config.json","--log-level=debug"]
RUN ["/bin/sh","/root/bootstrap.sh"]
ENTRYPOINT ["/go/bin/vault","server","-config=/etc/vault/config.json","--log-level=debug"]
#ENTRYPOINT ["/sbin/init"] 
