#!/bin/bash

username=$(whiptail --inputbox "Enter a user you want to View Info" 8 39 --title "View User Info" 3>&1 1>&2 2>&3)

status=$?
if [ $status = 0 ]
 then
sudo id $username &> /dev/null

	if [ $? -eq 0 ] 
	then
	# Display the User INFO using whiptail
	#$info=chage -l $username
	username1=$(cat /etc/passwd | grep $username | cut -d: -f1)
	uid=$(cat /etc/passwd | grep $username | cut -d: -f3)

	directory=$(cat /etc/passwd | grep $username | cut -d: -f6)
	shell=$(cat /etc/passwd | grep $username | cut -d: -f7)
	#info = $(chage -l $username)
	whiptail --scrolltext --title "View User Info" --msgbox "Login Name:$username1\nuser ID : $uid\nDirectory: $directory\nshell :$shell\n$(chage -l $username)  " 20 78

	else
	whiptail --title "OOPS" --msgbox "User $username is not existed" 8 78
	./menuDB
	fi

else
 ./menuDB
fi


