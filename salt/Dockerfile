FROM alpine:latest

COPY files/bootstrap.sh /home/bootstrap.sh
RUN apk --update add python \
    py-pip \
    python-dev \
    git \
    alpine-sdk \
    bash && \
    pip install pycrypto && \
    apk del alpine-sdk && \
    bash /home/bootstrap.sh && \
    sed -i 's/^tty/#tty/' /etc/inittab


EXPOSE 4505 4506 

ENTRYPOINT ["/sbin/init"]

