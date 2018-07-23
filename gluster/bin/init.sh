#! /bin/bash

rpcbind start
service glusterfs-server start
sleep 1
ls /var/log/glusterfs
if [ -f /var/log/glusterfs/nfs.log ] ; then
  tail -f /var/log/glusterfs/glusterd.log
else
  tail -f /var/log/glusterfs/glusterd.log /var/log/glusterfs/nfs.log
fi
