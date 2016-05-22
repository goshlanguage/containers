FROM alpine:latest

COPY files/bootstrap.sh /home/bootstrap.sh
RUN apk --update add python \
    py-pip \
    python-dev \
    git \
    alpine-sdk \
    gcc \
    bash && \
    pip install pycrypto \
    zmq && \
    bash /home/bootstrap.sh && \
    apk del alpine-sdk && \
    sed -i 's/^tty/#tty/' /etc/inittab

EXPOSE 4505 4506 

CMD ["salt-master","-d"]

ENTRYPOINT ["/sbin/init"]

