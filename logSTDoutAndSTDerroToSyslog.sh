#frirst approach
#http://urbanautomaton.com/blog/2014/09/09/redirecting-bash-script-output-to-syslog/


#from here

# https://unix.stackexchange.com/questions/25639/how-to-automatically-record-all-your-terminal-sessions-with-script-utility

test "$(ps -ocommand= -p $PPID | awk '{print $1}')" == 'script' || (script -f $HOME/shell_log_from_$(date +"%d-%b-%y_%H-%M-%S").log)



#with PID of bash process echo $($$)
test "$(ps -ocommand= -p $PPID | awk '{print $1}')" == 'script' || (script -    f $HOME/shell_log_from_$(date +"%d-%b-%y_%H-%M-%S")_PID_$(echo $$).log)
