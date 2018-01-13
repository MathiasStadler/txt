#!/bin/bash

# from here
# https://stackoverflow.com/questions/8455991/elegant-way-for-verbose-mode-in-scripts
# set verbose level to info

__VERBOSE=7

declare -A LOG_LEVELS
# https://en.wikipedia.org/wiki/Syslog#Severity_level
LOG_LEVELS=([0]="emerg" [1]="alert" [2]="crit" [3]="err" [4]="warning" [5]="notice" [6]="info" [7]="debug")
function .log () {
  local LEVEL=${1}
  shift
  if [ ${__VERBOSE} -ge "${LEVEL}" ]; then
    echo -e "[${LOG_LEVELS[$LEVEL]}]" "$@"
  fi
}


# follow idea from here 
# https://github.com/armbian/build/blob/master/lib/general.sh

display_alert_log()
#--------------------------------------------------------------------------------------------------------------------------------
# Let's have unique way of displaying alerts
#--------------------------------------------------------------------------------------------------------------------------------
{

if [ $3 ]       # This time, $string1 stands naked.
then
  .log 7 "3rd function argument  => \"$3\" is not null."
  _log_level=$3
else  
  .log 7 "3rd function argument  =>\"$3\" <= is null."
  _log_level=$2
fi 

	

	# log function parameters to install.log
	#[[ -n $DEST ]] && echo "Displaying message: $@" >> $DEST/debug/output.log

	local tmp=""
	[[ -n $2 ]] && tmp="[\e[0;33m $2 \x1B[0m]"

	# TODO old case $3 in
	case "${_log_level}" in

		emerg)
		.log 0 "[\e[0;31m emerg \x1B[0m] $1 $tmp"
		;;
		alert)
		.log 1 "[\e[0;31m alert \x1B[0m] $1 $tmp"
		;;
		critical)
		.log 2 "[\e[0;31m critcal \x1B[0m] $1 $tmp"
		;;
		error)
		.log 3 "[\e[0;31m error \x1B[0m] $1 $tmp"
		;;
		warning)
		.log 4 "[\e[0;35m warning \x1B[0m] $1 $tmp"
		;;
		notice)
		.log 5  "[\e[0;32m notice \x1B[0m] \e[1;32m$1\x1B[0m $tmp"
		;;
		info)
		.log 6 "[\e[0;32m info \x1B[0m] $1 $tmp"
		;;
		debug)
		.log 7 "[\e[0;32m debug \x1B[0m] $1 $tmp"
		;;
		*)
		.log 6 "[\e[0;32m info \x1B[0m] $1 $tmp"
		;;
	esac
}



.log 6 "Start logging"


show_looging(){


.log 1 "0"
.log 1 "1"
.log 2 "2"
.log 3 "3"
.log 4 "4"
.log 5 "5"
.log 6 "6"
.log 7 "7"

display_alert_log "0" "emerg"
display_alert_log "1" "alert"
display_alert_log "2" "critical"
display_alert_log "3" "error"
display_alert_log "4" "warning"
display_alert_log "5" "notice"
display_alert_log "6" "info"
display_alert_log "7" "debug"

display_alert_log "0" "emerg with text" "emerg"
display_alert_log "1" "alert with text" "alert"
display_alert_log "2" "critical with text" "critical"
display_alert_log "3" "error with text" "error"
display_alert_log "4" "warning with text" "warning"
display_alert_log "5" "notice with text" "notice"
display_alert_log "6" "info with text" "info"
display_alert_log "7" "debug with text" "debug"

#LOG_LEVELS=([0]="emerg" [1]="alert" [2]="crit" [3]="err" [4]="warning" [5]="notice" [6]="info" [7]="debug")

}