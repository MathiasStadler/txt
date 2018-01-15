#!/bin/bash -e

if [ ! "$BASH_VERSION" ]; then
    echo "Please use GNU BASH Version greater than 4.x.x for this script Thanks ($0)" 1>&2
    exit 1
fi

# from here
# https://stackoverflow.com/questions/3199893/howto-detect-bash-from-shell-script
# /proc/self/exe --version 2>/dev/null | grep -q 'GNU bash' && USING_BASH=true || USING_BASH=false

finish_error() {
    echo -e "\e[31m ERROR MAKE SURE YOU USED BASH 4.3 and greater.\e[0m"
    exit 1
}
trap finish_error ERR

# from here
# https://stackoverflow.com/questions/3199893/howto-detect-bash-from-shell-script
# /proc/self/exe --version 2>/dev/null | grep -q 'GNU bash' && USING_BASH=true || USING_BASH=false
# abvoid set variables inside subshell
USING_BASH=$(/proc/self/exe --version 2 2>/dev/null | grep -q "GNU.*bash" && echo "true" || echo "false")

echo "Using bash => ${USING_BASH}"

echo "BASH VERSIOn => $BASH_VERSION"

version_above_4() {
    # check if $BASH_VERSION is set at all
    [ -z "$BASH_VERSION" ] && return 1

    # If it's set, check the version
    case $BASH_VERSION in
    4.*) return 0 ;;
    ?) return 1 ;;
    esac
}

if [ "${USING_BASH}" == "true" ]; then
    if version_above_4; then
        echo -e "Good"
    else
        echo -e "BASH version to old"
    fi
else
    echo -e " Please used the BASH Shell instead "
    finish_error
    exit 1
fi



