FROM alpine:latest 

COPY init.sh /etc/init.sh

RUN apk --update install -y wget \
    unzip \
    lvm2 \
    software-properties-common \
    && wget -O /tmp/consul.zip https://releases.hashicorp.com/consul/0.6.4/consul_0.6.4_linux_amd64.zip \
    && unzip /tmp/consul.zip -d /bin/ \
    && apt-add-repository ppa:gluster/glusterfs-3.7 \
    && apt-get update \
    && apt-get -y install glusterfs-server glusterfs-client attr \
    && apt-get clean \
    && chmod a+x /etc/init.sh


EXPOSE 111 245 443 24007 24008 24009 24010 24011 24012 24013 24014 24015 2049 8080 6010 6011 6012 38465 38466 38468 38469 49152 49153 49154 49156 49157 49158 49159 49160 49161 49162 49163


CMD ["/etc/init.sh"]

