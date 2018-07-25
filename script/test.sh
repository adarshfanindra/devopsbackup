#!/bin/bash

RELEASE=`cat /etc/redhat-release`
isCentOs7=false
isCentOs65=false
isCentOs64=false
isCentOs6=false
SUBSTR=`echo $RELEASE|cut -c1-22`
SUBSTR2=`echo $RELEASE|cut -c1-26`

if [ "$SUBSTR" == "CentOS Linux release 7" ]
then
    isCentOs7=true
elif [ "$SUBSTR2" == "CentOS release 6.5 (Final)" ]
then 
    isCentOs65=true

elif [ "$SUBSTR2" == "CentOS release 6.4 (Final)" ]
then 
    isCentOs64=true
else
    isCentOs6=true
fi

# TODO: add a check for versions earlier than 6.5

if [ "$isCentOs7" == true ]
then
    echo "I am CentOS 7"
elif [ "$isCentOs65" == true ]
then
    echo "I am CentOS 6.5"
elif [ "$isCentOs64" == true ]
then 
    echo "I am CentOS 6.4"
else
    echo "I am CentOS 6"
fi
