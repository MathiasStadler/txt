#!/bin/bash -e

# ATTENTION for used
# More a template for other script as used

usage_bash_path_helper() {

    echo -e "Script  $1 call directly"
    echo -e "Helper script should run normaly as bash include"
    tmpplate_script_piece="$(
        cat <<EOF
#~~~~~~~~~~~~~~~~~ snip ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# find and source ${SCRIPT_NAME} 
# add this to your script
SCRIPT_PATH="\$( cd "\$( dirname "\${BASH_SOURCE[0]}" )" && pwd )"
BASH_PATH_TO_HELPER=\${SCRIPT_PATH}/../bash_helper/$1
if [ -r "\${BASH_PATH_TO_HELPER}" ]; then
  source "\${BASH_PATH_TO_HELPER}" 
else
  echo -e "fatal: could not find or readable ${BASH_PATH_TO_HELPER} "
  echo -e "\$(ls -l \${BASH_PATH_TO_HELPER})" 
  exit 1
fi

#~~~~~~~~~~~~~~~ snap ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
EOF
    )"
    echo -e "$tmpplate_script_piece"

}

if [[ $(basename "$0") == "bash_path_helper.sh" ]]; then
    usage_bash_path_helper "$(basename "$0")"
    exit 0
fi

unset -f usage_bash_path_helper
