#!/bin/bash

echo "installing $1"

sudo apt update -y
sudo apt install $1 -y


#now we can use it to install nginx
#with ./arg.sh nginx

#now using this same file we can install docker also

#./arg.sh docker.io