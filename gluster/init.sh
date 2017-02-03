#! /bin/bash


service glusterfs-server start
#tail -f /var/log/glusterfs/etc-glusterfs-glusterd.vol.log
/sbin/init
