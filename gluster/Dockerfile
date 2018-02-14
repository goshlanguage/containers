FROM ubuntu:16.04

COPY init.sh /etc/init.sh

RUN apt-get update && apt-get install -y wget \
    unzip \
    lvm2 \
    software-properties-common \
    rpcbind \
    libnfsidmap2 \
    nfs-common \
    && apt-add-repository ppa:gluster/glusterfs-3.10 \
    && apt-get update \
    && apt-get -y install glusterfs-server glusterfs-client attr \
    && rm -rf /var/lib/apt/lists/* \
    && chmod +x /etc/init.sh

EXPOSE 111 245 443 24007 24008 24009 24010 24011 24012 24013 24014 24015 2049 8080 6010 6011 6012 38465 38466 38468 38469 49152 49153 49154 49156 49157 49158 49159 49160 49161 49162 49163

CMD ["/usr/sbin/glusterd","-N","-l","/tmp/gluster.log"]
