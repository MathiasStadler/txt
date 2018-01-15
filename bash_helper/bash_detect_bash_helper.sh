#!/bin/bash


# from here
# https://stackoverflow.com/questions/3199893/howto-detect-bash-from-shell-script
# /proc/self/exe --version 2>/dev/null | grep -q 'GNU bash' && USING_BASH=true || USING_BASH=false

/proc/self/exe --version 2 2>/dev/null | grep -q "GNU.*bash" && USING_BASH=true || USING_BASH=false

echo "Using bash => ${USING_BASH}"
