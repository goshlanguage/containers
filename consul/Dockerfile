FROM alpine:latest

ENV CONSUL_VERSION="0.6.2-rel" GOMAXPROCS=2

# Download and install Consul
# We are building it ourselves, because Alpine Linux doesn't use glibc

RUN export GOPATH=/go && \
    apk add --update go git gcc musl-dev make bash zip && \
    go get github.com/hashicorp/consul && \
    cd $GOPATH/src/github.com/hashicorp/consul && \
    make && \
    mv bin/consul /bin && \
    rm -rf $GOPATH && \
    apk del go git gcc musl-dev make bash && \
    rm -rf /var/cache/apk/* && \
    addgroup consul && \
    adduser -D -G consul consul && \
    mkdir -p /data/consul && \
    chown -R consul:consul /data/consul

# Add the files
# ADD root /

VOLUME ["/data/consul"]

EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 53 53/udp

