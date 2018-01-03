#!bin/bash


# from here 
# https://Astackoverflow.com/questions/3258243/check-if-pull-needed-in-git


[ $(git rev-parse HEAD) = $(git ls-remote $(git rev-parse --abbrev-ref @{u} |  sed 's/\// /g') | cut -f1) ] && echo up to date || echo not up to date


