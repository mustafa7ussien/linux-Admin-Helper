#!/bin/bash

#read group from whiptail
groupname=$(whiptail --inputbox "Enter Name Of Group You Need ADD" 8 39 --title "Add Group" 3>&1 1>&2 2>&3)

status=$?
if [ $status = 0 ]; then

#check group exist or not
sudo getent group $groupname &>/dev/null
if [ $? -eq 0 ] 
	then
	whiptail --title "OOPS" --msgbox "Group $groupname is already existed please enter another one" 8 78
	./menuDB
	else
	sudo groupadd $groupname &> /dev/null
	whiptail --title "DONE" --msgbox "The group  $groupname is created successfully" 8 78
	./menuDB
	fi

else
    ./menuDB
fi
