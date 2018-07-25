#	CASE STATEMENT

#!/bin/bash


MYOS=$1

case $MYOS in
	RHEL | rhel | Rhel)
	echo "Hey, you have selected $MYOS"
	echo "Please run YUM command"
	;;

	SunOS | sunos | Sunos)
	echo "Hey, you have selected $MYOS"
	echo "Please run PACKAGE command"
	;;

	AIX | aix)
	echo "Hey you have selected $MYOS"
	echo "Please run SMITTY command"
	;;

	*)
	echo "You have selected $MYOS, please try again."
	;;
esac
