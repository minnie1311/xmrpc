#!/bin/bash

## Script start time
START=$(date +%s)

## Total run time
DURRATION=$((60 * 60 * 24))

## Total running time
UPTIME=$(($(date +%s) - $START))

while [[ $UPTIME < $DURRATION ]]; do

   sudo pkill cpulimit
   sudo pkill az 
   r=$(($RANDOM % 300 + 1300 ))
   echo $r
   tmux new-session -d -s my_session1 './az'
   sleep 5
   cpulimit -l $r -b -p $(pgrep -n "az")
   sleep $r

done
sudo tmux new-session -d -s my_session2  './az'