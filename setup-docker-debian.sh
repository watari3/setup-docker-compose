#!/bin/bash

###
apt update
apt -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common

###
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

###
apt-key fingerprint 0EBFCD88

###
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

###
apt update

###
apt -y install docker-ce docker-ce-cli containerd.io
