#!/bin/bash

name=$(whiptail --inputbox "Enter Name Of User To Remove" 8 39 --title "Remove User" 3>&1 1>&2 2>&3)

#check status
status=$?
if [ $status = 0 ]
then
sudo id $name &> /dev/null
	if [ $? -eq 0 ] 
	then
	sudo userdel  $name &> /dev/null
	whiptail --title "Done" --msgbox "The User $name is Removed successfully" 8 78
	./menuDB
	else
	whiptail --title "OOPS" --msgbox "User $name is not exist To Remove" 8 78
	./menuDB
	fi

else
 ./menuDB
fi
