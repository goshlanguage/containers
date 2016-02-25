FROM alpine:latest
MAINTAINER Ryan Hartje <ryan@ryanhartje.com>

RUN apk --update add vault

EXPOSE 8200 8500 
ENTRYPOINT ["/usr/local/bin/vault"]
