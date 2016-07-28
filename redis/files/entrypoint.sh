#!/bin/sh

set -e
exec /usr/bin/redis-server /etc/redis.conf --loglevel verbose 

