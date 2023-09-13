#!/bin/bash

# user name that modify to it group
name=$(whiptail --inputbox "Enter The  username" 8 78 --title "Add User To Group" 3>&1 1>&2 2>&3)

# The Grou p that will append to user
group=$(whiptail --inputbox "Enter group name" 8 78 --title "Add User To Group" 3>&1 1>&2 2>&3)

# Check if the group exists

if getent group $group >/dev/null
then

   	 # Modify the group to  the user
   	 usermod -aG $group $name
  	 whiptail --msgbox "SADD group for $name has been modified to $group Sucessfully " 8 78

     	 ./menuDB

	else
   	 whiptail --msgbox "Group $group does not exist." 8 78

	./menuDB
fi
