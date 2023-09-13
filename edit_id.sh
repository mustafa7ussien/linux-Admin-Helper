#!/bin/bash

#Enter user  to Edit id to it
name=$(whiptail --inputbox "Enter the name you need Edit ID:" 8 78 --title "Edit User" 3>&1 1>&2 2>&3)

#ID that modify to user
userid=$(whiptail --inputbox "Enter the new user ID:" 8 78 --title "Edit User" 3>&1 1>&2 2>&3)

#check user is exist
if id "$name" >/dev/null 2>&1; then
    #modify the user ID
    sudo usermod -u $userid $name
    whiptail --title "Edit User" --msgbox "User ID To  $name has been Edit Successfully." 8 78
    ./menuDB
else
    whiptail --title "Edit User" --msgbox "User $name does not exist." 8 78
   ./menuDB
fi
