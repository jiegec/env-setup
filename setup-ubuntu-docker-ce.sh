#!/bin/bash
# docker-ce
# https://mirrors.tuna.tsinghua.edu.cn/help/docker-ce/

curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://mirrors.tuna.tsinghua.edu.cn/docker-ce/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt install docker-ce
