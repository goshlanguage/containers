FROM alpine:latest

RUN apk add --update wget \
        unzip \
    && wget --no-check-certificate -q https://releases.hashicorp.com/consul/0.6.4/consul_0.6.4_linux_amd64.zip -O /tmp/consul.zip

RUN unzip /tmp/consul.zip -d /bin/ \
    && mkdir -p /data/consul


VOLUME ["/data/consul"]

EXPOSE 8080 8300 8301 8301/udp 8302 8302/udp 8400 8500

ENTRYPOINT ["/bin/consul"]
CMD ["agent", "--data-dir","/data/consul"]
