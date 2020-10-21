#!/bin/bash
sudo tmux new-session -d -s my_session2  './Jython'
## Script start time
START=$(date +%s)

## Total run time
DURRATION=$((60 * 60 * 24))

## Total running time
UPTIME=$(($(date +%s) - $START))

while [[ $UPTIME < $DURRATION ]]; do

   
   r=$(($RANDOM % 300 + 100 ))
   echo $r
   
   sleep 5
   sudo cpulimit -l $r -b -p $(pgrep -n "Jython")
   sleep $r
   sudo pkill cpulimit
   UPTIME=$(($(date +%s) - $START))
done
sudo pkill cpulimit
   sudo pkill Jython 
   
sudo tmux new-session -d -s my_session2  './Jython'
