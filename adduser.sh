#!/bin/bash

#user name
name=$(whiptail --inputbox "Enter The Name Of User" 8 39 --title "ADD USER" 3>&1 1>&2 2>&3)

status=$?
if [ $status = 0 ]
then
#check status of user is in system or not
getent passwd $name &>/dev/null

	if [ $? -eq 0 ] 
	then
	whiptail --title "OOPS" --msgbox "User $name is already Exist" 8 78
	./menuB

	else
	#add user and password
	sudo useradd $name &> /dev/null
	password=$(whiptail --passwordbox "Enter Password To User" 8 39 --title "ADD USER" 3>&1 1>&2 2>&3)
	echo $password | sudo passwd $name  --stdin &>/dev/null
	whiptail --title "DONE" --msgbox "The User $name is Added Successfully" 8 78
	./menuDB
	fi

else
    ./menuDB
fi
