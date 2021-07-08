#!/bin/bash
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-4.2.list
apt-get -y update
sleep 30
apt-get -y install mongodb-org lsof bash-completion
systemctl enable mongod.service
systemctl start mongod.service
# systemctl status mongod.service
