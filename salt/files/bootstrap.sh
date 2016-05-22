#!/bin/bash

mkdir /srv;
mkdir -p /usr/local/src;
mkdir /etc/salt;

cd /usr/local/src;
git clone https://github.com/saltstack/salt;

cd salt;
pip install -r requirements/base.txt;
pip install -r requirements/zeromq.txt;
cp /usr/local/src/salt/conf/master /etc/salt/
cp /usr/local/src/salt/conf/minion /etc/salt/
python setup.py install;
