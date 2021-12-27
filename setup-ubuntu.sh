#!/bin/bash
./setup-ubuntu-docker-ce.sh
./setup-ubuntu-cuda.sh
./setup-ubuntu-nvidia-docker.sh

sudo apt install -y docker-ce nvidia-docker2
