#! /bin/bash

rpcbind start
service glusterfs-server start
tail -f /var/log/glusterfs/gluster.log /var/log/glusterfs/nfs.log
