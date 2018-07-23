FROM ubuntu:16.04

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

# https://github.com/ehough/docker-nfs-server/pull/3#issuecomment-387880692
ARG DEBIAN_FRONTEND=noninteractive

# kmod is needed for lsmod, and libcap2-bin is needed for confirming Linux capabilities
RUN apt-get update                                                                && \
    apt-get install -y --no-install-recommends nfs-kernel-server kmod libcap2-bin && \
    apt-get clean                                                                 && \
    rm -rf /var/lib/apt/lists                                                     && \
                                                                                     \
    # remove the default idmapd.conf
    rm -v /etc/idmapd.conf

# http://wiki.linux-nfs.org/wiki/index.php/Nfsv4_configuration
RUN mkdir -p /var/lib/nfs/rpc_pipefs && \
    mkdir -p /var/lib/nfs/v4recovery && \
    echo "rpc_pipefs  /var/lib/nfs/rpc_pipefs  rpc_pipefs  defaults  0  0" >> /etc/fstab && \
    echo "nfsd        /proc/fs/nfsd            nfsd        defaults  0  0" >> /etc/fstab



EXPOSE 2049 

RUN ["mkdir", "/run/sendsigs.omit.d"]

CMD ["/bin/init.sh"]

