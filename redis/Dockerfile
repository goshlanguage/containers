FROM alpine:latest

MAINTAINER ryan@ryanhartje.com

#COPY files/bootstrap.sh /home/bootstrap.sh
RUN apk add --update redis

CMD ["/usr/bin/redis-server","/etc/redis.conf","--loglevel","verbose"]
ENTRYPOINT ["/sbin/init"]
