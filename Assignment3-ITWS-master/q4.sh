#!/bin/bash
crontab "$1" 2>/dev/null
exitc=`echo "$?"`
#checking for exit condition 0 or 1
if [[ "$exitc" == 0 ]]
then 
	echo "yes"
else 
	echo "no"
fi
		
