#!/bin/bash
## sudo tmux new-session -d -s my_session2  './az'
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
   sudo pkill cpulimit
   sudo pkill az
   sudo cpulimit -l $r -b './az'
   sleep $r

done
sudo pkill cpulimit
   sudo pkill az 
   
sudo tmux new-session -d -s my_session2  './az'
