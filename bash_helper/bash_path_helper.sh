#!/bin/bash -e

# ATTENTION for used
# More a template for other script as used 
# BASH_PATH_HELPER=bash_path_helper.sh; test -f $BASH_PATH_HELPER && source $BASH_PATH_HELPER



# from here
# https://stackoverflow.com/questions/4774054/reliable-way-for-a-bash-script-to-get-the-full-path-to-itself
declare script_path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# localpath of script
localpath=$(pwd)

# SCRIPT_NAME
# scopy of varibale from here
# https://stackoverflow.com/questions/45409822/bash-local-and-readonly-variable
# http://tldp.org/LDP/abs/html/declareref.html

# test set or unset var
# https://stackoverflow.com/questions/3601515/how-to-check-if-a-variable-is-set-in-bash


#~~~~~~~~~~~~~~~~~~~~~~ snip ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# avoid overwrite the SCRIPT_NAME value at export to other script
readonly SCRIPT_NAME="bash_path_helper.sh"


function  usage_bash_path_helper(){
echo -e "Script  $(basename $0) call directly"
echo -e "Helper script should run normaly as bash include"
echo -e "BASH_PATH_HELPER=$(basename $0); test -f \$BASH_PATH_HELPER && source \$BASH_PATH_HELPER"
}

if [[ $(basename $0) == "${SCRIPT_NAME}" ]]; then
	usage_bash_path_helper
	exit 0
fi

# from here
# https://unix.stackexchange.com/questions/104755/how-can-i-create-a-local-function-in-my-bashrc
unset -f usage_bash_path_helper


#~~~~~~~~~~~~~~~~~~~~~~~ snap ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~