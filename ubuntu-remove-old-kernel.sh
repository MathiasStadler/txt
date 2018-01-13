#!/bin/bash

# from here
# https://askubuntu.com/questions/263363/how-can-i-remove-old-kernels-install-new-ones-when-boot-is-full

#check first what are you want to delete
dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ :]*\).*/\1/;/[0-9]/!d' | xargs


# execute handle with care
#dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | xargs sudo apt-get -y purge