#!/bin/bash

yes | apt-get update
yes | apt-get upgrade

wget -qO- https://get.docker.com/ | sh
usermod -aG docker $(whoami)

apt-get -y install python-pip
pip install docker-compose

reboot
