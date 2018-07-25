#!/bin/bash

#SCRIPT FOR LAMP SETUP


###############################################################################################################
##                                    		  HTTPD INSTALLATION                                         ##
###############################################################################################################

	#CHECKING IF THE PACKAGE HTTP IS INSTALLED OR NOT

	/usr/sbin/httpd -v
if	[ "$?" -eq 0 ] ; then
	echo "Hey, HTTPD is already installed on your machine"
fi

	#HTTPD INSTALLATION

	/usr/sbin/httpd -v 
if	[ "$?" -ne 0 ] ; then
	echo "Hey, HTTPD is not installed on your machine, please wait while we install HTTPD Service"
	sleep 3
	yum -y install httpd
	systemctl enable httpd
	systemctl start httpd.service
fi

###############################################################################################################
##					PHP INSTALLATION COMPLETED				             ##
###############################################################################################################

	php -v
if	[ "$?" -eq 0 ] ; then
	echo "Hey, PHP is already installed on your machine"
exit
fi
	#PHP INSTALLATION

	php -v
	[ "$?" -ne 0 ] ; then
	echo "Hey, PHP is installed on you machine, please wait while we install PHP Serivce"
	sleep 3
	yum -y install php libapache2-mod-php php-mcrypt php-mysql
	sudo systemctl restart apache2
	systemctl status apache2
