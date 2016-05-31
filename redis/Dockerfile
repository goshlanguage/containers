FROM alpine:latest
MAINTAINER ryan@ryanhartje.com

COPY files/entrypoint.sh /
RUN apk add --update redis

ENTRYPOINT ["/entrypoint.sh"]
