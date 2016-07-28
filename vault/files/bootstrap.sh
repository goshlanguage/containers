#!/bin/sh

HOSTNAME=$(hostname)
openssl req -new -x509 -newkey rsa:4096 -keyout /etc/ssl/key.pem -out /etc/ssl/cert.pem -days 365 -nodes -subj "/C=US/ST=Texas/L=Austin/O=GPL/CN=$HOSTNAME"
