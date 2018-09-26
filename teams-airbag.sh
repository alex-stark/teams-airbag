#!/bin/bash

teams_pid_cnt=$(ps -ef | grep  Teams.app | grep -v grep | wc -l)
if [ $teams_pid_cnt = 0 ]
then
  open /Applications/Microsoft\ Teams.app
fi
