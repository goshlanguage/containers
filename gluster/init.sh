#! /bin/bash

service glusterfs-server start
mkdir -p /data
tail -f /var/log/glusterfs/etc-glusterfs-glusterd.vol.log
