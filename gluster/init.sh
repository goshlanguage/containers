#! /bin/bash

rpcbind start
service glusterfs-server start
tail -f /tmp/gluster.log
# /sbin/init
