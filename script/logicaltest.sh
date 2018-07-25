#!/bin/bash

PER=$1

#LOGICAL NOT

	if [ ! $PER ] ; then
	echo "Please enter the percentage"
	exit
fi

#LOGICAL OR 
	if [ "$PER" -gt 100 -o "$PER" -lt 0 ] ; then 
	echo "Please enter percentage between 0-100"
	exit
fi

#LOGICAL AND
	if [ "$PER" -gt 65 -a "$PER" -lt 100 ] ; then
	echo "Student result: First Division"
elif
	[ "$PER" -gt 55 -a "$PER" -lt 65 ] ; then
	echo "Student Result: Second Division"
elif 
	[ "$PER" -gt 45 -a "$PER" -lt 55 ] ; then
	echo "Student Result: Third Division"
else
	echo "Student Result: FAILED"
fi

