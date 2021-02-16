#!/bin/bash
echo 'Post Installation Started'

mv /home/gem5/serial-getty@.service /lib/systemd/system/

mv /home/gem5/m5 /sbin
ln -s /sbin/m5 /sbin/gem5

mv /home/gem5/run.sh /root/


# Add run script to bashrc
# When simulation starts, run.sh is automatically executed
echo "/root/run.sh" >> /root/.bashrc

# ============ install docker =================
sudo apt update
sudo apt upgrade

# install requirements
# sudo apt-get install curl apt-transport-https ca-certificates software-properties-common

# add docker to apt rep
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
# sudo apt update

# make sure we are installing from the docker repo
# instead of the Ubuntu repo
# apt-cache policy docker-ce

# install docker
# sudo apt install docker-ce

# check status of docker
# sudo systemctl status docker

sudo apt install -y docker.io


# test if docker is successfully installed
sudo systemctl start docker
sudo systemctl enable docker
docker --version
docker run hello-world

echo 'Post Installation Done'
