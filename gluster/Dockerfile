FROM solita/ubuntu-systemd:latest
#FROM ubuntu:16.04

COPY bin/* /bin/

RUN apt-get update && apt-get install -y \
        attr \
        less \
        nfs-common \
        rpcbind \
        software-properties-common \
        strace \
        unzip \
        vim \
        wget \
    && apt-add-repository ppa:gluster/glusterfs-3.10 \
    && apt-get update \
    && apt-get -y install \
        glusterfs-server \
        glusterfs-client \
        glusterfs-common \
    && rm -rf /var/lib/apt/lists/* \
    && chmod +x /bin/init.sh

EXPOSE 2049 

RUN ["mkdir", "/run/sendsigs.omit.d"]

CMD ["/bin/init.sh"]
