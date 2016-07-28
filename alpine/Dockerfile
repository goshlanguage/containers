FROM alpine:latest

RUN apk --update add mc vim \
  && sed -i 's/^tty/#tty/' /etc/inittab
ENTRYPOINT ["/sbin/init"]
