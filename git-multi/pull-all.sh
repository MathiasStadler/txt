#!/bin/bash

# credits goes to
# https://stackoverflow.com/questions/3497123/run-git-pull-over-all-subdirectories
for i in */.git; do ( echo $i; cd $i/..; git pull; ); done



#paralell 10x
#find . -name ".git" -type d | sed 's/\/.git//' |  xargs -P10 -I{} git -C {} pull
