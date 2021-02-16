# Disk Image generation files for gem5

## 1. How to use
- prepare container env with dependencies installed
   - ```docker pull joonho0320/v4```
   - ```
        docker run -it \
        --device=/dev/kvm \
        --workdir="/home/$USER" \
        -v /home/joonho/:/home/joonho/ \
        joonho0320/v4 
    ```
    - ```apt-get update``` and ```apt-get install qemu-system-x86```
    - may have to install ```unzip``` for next step ??

- download and install packer
    - ```wget https://releases.hashicorp.com/packer/1.5.6/packer_1.5.6_linux_amd64.zip```
    - ```unzip packer_1.5.6_linux_amd64.zip```

- to build the image
    - ```./build.sh``` inside your terminal

## 2. Features
- currently, docker is installed within the image so that FS simulations of docker is enabled
- to install additional packages, modify the ```post-installation.sh``` script
- to change the simulation part of the system, change ```run.sh```

