#!/bin/bash

#from here last entry
#https://unix.stackexchange.com/questions/68042/double-and-triple-substitution-in-bash-and-zsh

hello=world
echo=hello

echo $echo ${!echo}

echo $echo ${echo} ${!echo}