#!/bin/bash -e

#test ../bash_log_helper

#TODO Whats is the best test for bash scripts


BASH_PATH_HELPER=../bash_log_helper.sh; test -f $BASH_PATH_HELPER && source $BASH_PATH_HELPER

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


#usage_bash_log_helper

echo ${SCRIPT_NAME}


if [ ! "${SCRIPT_NAME}" ] #note the lack of a $ sigil
then
    echo "Variable is unset"
elif [ -z "$SCRIPT_NAME" ]
then
    echo "Variable is set to an empty string"
else
    echo "Variable is set to some string"
fi