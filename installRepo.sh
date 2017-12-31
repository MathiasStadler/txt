#!/bin/bash

#from here
#https://askubuntu.com/questions/942778/how-to-install-repo-tool

mkdir ~/bin
sudo curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
export PATH="~/bin:$PATH"
