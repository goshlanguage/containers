#FROM alpine:latest
FROM golang:1.6.2

ENV CONSUL_VERSION="0.6.2-rel" \
    GOMAXPROCS=2 \
    GOPATH="/gopath" \
    PATH=$PATH:/gopath/bin/

# Download and install Consul
# We are building it ourselves, because Alpine Linux doesn't use glibc
#
# We also need Go 1.6+, but Alpine's package manager currently only has 1.5.?

RUN apk add --update curl git gcc musl-dev libc-dev make bash zip && \
    #curl https://storage.googleapis.com/golang/go1.6.linux-amd64.tar.gz | tar xzf - -C / && \
    #mv /go /goroot && \
    #mkdir /gopath && \
    go get github.com/hashicorp/consul && \
    cd $GOPATH/src/github.com/hashicorp/consul && \
    make && \
    mv bin/consul /bin && \
    rm -rf $GOPATH && \
    #apk del git gcc musl-dev make bash && \
    rm -rf /var/cache/apk/* && \
    addgroup consul && \
    adduser -D -G consul consul && \
    mkdir -p /data/consul && \
    chown -R consul:consul /data/consul

# Add the files
# ADD root /

VOLUME ["/data/consul"]

EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 53 53/udp

