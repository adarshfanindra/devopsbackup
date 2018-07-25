#!/bin/bash

#Run 'whoami' command and store the value in 'RUNUSER' variable

	RUNUSER=`/usr/bin/whoami`
	#Check if the variable has ROOT value or not
	if [ $RUNUSER=="root" ] ; then
	echo "you are a ROOT USER"
else
	echo "You are not a ROOT USER" 
fi
