#!/bin/bash

PER=$1
	if [ "$PER" -gt 65 ] ; then
	echo "Student Result: FIRST DIVISION"
elif
	[ "$PER" -gt 55 ] ; then 
	echo "Student Result: SECOND DIVISION"
elif
	[ "$PER" -gt 45 ] ; then
	echo "Student Result: THIRD DIVISION"
else
	echo "Student Result: FAILED"
fi
