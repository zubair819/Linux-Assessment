#!/bin/bash
LOGFILE="$HOME/showtime.log"
while true
do
	date >>"$LOGFILE"
	sleep 60
done
