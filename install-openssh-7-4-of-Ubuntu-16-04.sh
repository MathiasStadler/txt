#!/bin/bash

# from here
# https://gist.github.com/techgaun/df66d37379df37838482c4c3470bc48e

# TODO check source
# TODO check checksum
# TODO check add package for ssh

# NOT SAFE only for quick test

sudo apt install -y build-essential libssl-dev zlib1g-dev
wget "http://mirrors.evowise.com/pub/OpenBSD/OpenSSH/portable/openssh-7.4p1.tar.gz"
tar xfz openssh-7.4p1.tar.gz
cd openssh-7.4p1
./configure
make
sudo make install