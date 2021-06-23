#!/bin/bash
tee /etc/apt/sources.list.d/pritunl.list << EOF
deb http://repo.pritunl.com/stable/apt focal main
EOF
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A

tee /etc/apt/sources.list.d/mongodb.list << EOF
deb http://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse
EOF
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv CF8E292A

apt update
apt-get --assume-yes update
apt-get --assume-yes upgrade
apt-get --assume-yes install pritunl mongodb-org
systemctl start pritunl mongod
systemctl enable pritunl mongod
