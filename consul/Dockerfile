FROM alpine:latest

RUN apk add --update wget \
    && wget -O consul.zip https://releases.hashicorp.com/consul/0.6.4/consul_0.6.4_linux_amd64.zip \
    && unzip consul.zip -d /bin/ \

VOLUME ["/data/consul"]

EXPOSE 8080 8300 8301 8301/udp 8302 8302/udp 8400 8500

ENTRYPOINT ["/sbin/init"]
