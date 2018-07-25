#!/bin/bash

##########################
# SCRIPT FOR ADDING USER
##########################

# TASK 1) GET THE USERNAME AS AN "ARGUMENT"

MYUSER=$1
	if [ ! "MYUSER" ] ; then
	echo "PLEASE ENTER THE NAME OF THE USER YOU WISH TO ADD"
	exit
fi

# TASK 2) DEFINE USER PASSWORD

	MYPASS="redhat"

# TASK 3) CHECK IF YOU ARE ROOT USER OR NOT

	RUNUSER=`/usr/bin/whoami`
	if [ "$RUNUSER" != "root" ] ; then
	echo "SORRY!! YOU MUST BE THE ROOT USER TO CONTINUE."
	exit
fi

# TASK 4) CHECK IF USER IS PRESENT OR NOT
#	  (i) If present, do not do anything
#	  (ii) If not present, then
#		a) Create the user
#		b) Set the user password

# TASK (i)

	/usr/bin/id "$MYUSER"
	if [ "$?" -eq 0 ] ; then
	echo "Hey!! Thet user "$MYUSER" already exists."
	exit
fi 

# TASK (ii)	
#	(a)

	/sbin/useradd "$MYUSER"

# TASK (ii)
#	(b)

	echo "$MYPASS" | /usr/bin/passwd --stdin "$MYUSER"

# TASK 5) FORCE THE USER TO RESER HIS PASSWORD AT HIS FIRST LOGIN.

	chage -d 0 "$MYUSER"
exit

# TASK 7) PRINT SUCCESS MESSAGE.

	echo " Created the user $MYUSER successfully!!"
