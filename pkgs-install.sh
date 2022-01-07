#!/bin/bash -ex

echo '
deb-src http://deb.debian.org/debian/ bullseye main
deb-src http://security.debian.org/debian-security bullseye-security main contrib
deb-src http://deb.debian.org/debian/ bullseye-updates main contrib
' >> /etc/apt/sources.list

apt update -y
apt install -y wget git
apt-get build-dep nginx -y

#clean all
apt clean all
