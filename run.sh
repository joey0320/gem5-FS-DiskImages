#!/bin/sh

echo "systemctl start docker"
sudo systemctl start docker
sudo systemctl enable docker
echo "docker daemon start finished"

docker --version

m5 resetstats

echo "start running container"
docker run -d ubuntu:latest echo "docker run"
echo "finish running container"

m5 dumpstats
m5 exit
