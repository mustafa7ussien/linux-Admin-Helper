#!/bin/bash

#get user name to disable
name=$(whiptail --inputbox "Enter The Name:" 8 78 --title "Disable User" 3>&1 1>&2 2>&3)

# Check if  exist user 
if  id "$name"  >/dev/null 2>&1; then
    # Disable the user account
    sudo usermod --expiredate 1 $name
    whiptail --title "Disable User" --msgbox "User $name has been disabled." 8 78
else
    whiptail --title "Disable User" --msgbox "User $name does not exist." 8 78
fi
