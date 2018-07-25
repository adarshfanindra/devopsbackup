#!/bin/bash

#check if /etc/passwd file is present or not

if [ -f "/etc/passwd" ]; then
	#true
	echo "the file /etc/passwd is present"
fi

#check if /home/ec2-user/scripts.sh is present or not

if [ -d "/home/ec2-user/scripts.sh" ]; then
	echo "the directory scripts.sh is present"
fi

#check if /etc/shawod has read permissions or not

if [ -r "/etc/shadow" ] ; then
	#true
	echo "the /etc/shadowd file has read permission"
	else
	#false
	echo "you do have read permission for /etc/shawod file."
fi

#check if /home/ec2-user/scripts.sh has write permissions or not 
	
if [ -w "filetest.sh" ] ; then
	#true
	echo "you have write permissions for /home/ec2-user/scripts.sh/filetest.sh file"
	else
	#false
	echo "you do not have write permissions for /home/ec2-user/scripts.sh/filetest.sh file"
fi
