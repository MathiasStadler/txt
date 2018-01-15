#!/bin/bash
#from here
#https://stackoverflow.com/questions/27922741/bash-shell-script-function-gives-find-missing-argument-to-exec-error




function ggrep {
 LS_="ls --color {}|sed s~./~~"
 [ -n "$1" -a "$1" != "*" ] && NAME_="-iname $1" || NAME_=
 [ -n "$2" ] && EXEC_="egrep -q \"$2\" \"{}\" && $LS_ && egrep -n \"$2\" --color=always \"{}\"|sed s~^B~\ B~" || EXEC_=$LS_
 FIND_="find . -type f $NAME_ -exec sh -c \"$EXEC_\" \\;"
 echo -e \\e[7m $FIND_ \\e[0m
 eval $FIND_
}