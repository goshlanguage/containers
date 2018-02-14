#! /bin/bash

service glusterfs-server start
tail -f /tmp/gluster.log
# /sbin/init
