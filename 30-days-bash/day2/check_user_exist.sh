#!/bin/bash
if [ -n "$1" ];then
	username="$1"
else
	read -p  "Enter your Username:" username
fi
if id "$username" &>/dev/null ;then
	echo "the user is existed: $username"
else
	echo "The $username is a fake user"
fi


