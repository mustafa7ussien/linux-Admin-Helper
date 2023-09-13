#!/bin/bash

#Enter the user you need enable
name=$(whiptail --inputbox "Enter a user you want to Enabled" 8 39 --title "Enable User" 3>&1 1>&2 2>&3)


#check status
status=$?
if [ $status = 0 ]
then
sudo id $name &> /dev/null
	if [ $? -eq 0 ] 
	then
         #enable user
	sudo usermod -U $username &> /dev/null
	whiptail --title "Done" --msgbox "User $name is Enabled successfully" 8 78
	./menuDB
	else

	whiptail --title "OOPS" --msgbox "User $name is not existed" 8 78
	./menuDB
	fi

else
 ./menuDB
fi
