#!/bin/bash

# THIS SCRIPT IS TO ADD USERS

	#INITALIZE CONDITION

ANS=Y
	
	while [ "$ANS" = "Y" ]

do
	echo "Please enter the user name you wish to add?"
	read OURUSER
	./useradd.sh $OURUSER

	#CONDITION MODIFIER

	echo "Do you wish to continue adding other user? [Y/N]"
	read ANS
done

#READ: is used to take input from the keybord and is assigned to the variable.
