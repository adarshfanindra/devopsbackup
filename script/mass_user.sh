#!/bin/bash

# SCRIPT TO ADD MULTIPLE USERS (ADD THE USERS IN THE "MYLIST" FILE)

MYLIST=$1

if	[ ! -f "$MYLIST" ] ; then
	echo "Please enter the correct file name" 
	exit
fi


	for OURUSER in `cat $MYLIST`
do
	./useradd.sh $OURUSER
done
