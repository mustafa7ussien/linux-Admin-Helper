#!/bin/bash

all_groups=$(awk -F: '{print $1}' /etc/group)
# print all group
whiptail --scrolltext --title "List All Group" --msgbox "$all_groups" 20 78
if [ $? -eq 0 ]
then
./menuDB
fi 
