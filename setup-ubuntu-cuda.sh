#!/bin/bash
# https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=20.04&target_type=deb_network
VERSION=$(lsb_release -r | cut -f2)
RELEASE="ubuntu${VERSION//.}"
wget https://developer.download.nvidia.com/compute/cuda/repos/${RELEASE}/x86_64/cuda-${RELEASE}.pin
mv cuda-${RELEASE}.pin /etc/apt/preferences.d/cuda-repository-pin-600
apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/${RELEASE}/x86_64/7fa2af80.pub
add-apt-repository "deb https://developer.download.nvidia.com/compute/cuda/repos/${RELEASE}/x86_64/ /"
apt-get update
