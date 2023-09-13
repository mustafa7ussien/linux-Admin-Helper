#!/bin/bash


all_users=$(awk -F: '$1 != "nobody" {print $1}' /etc/passwd)

#print all user
whiptail --scrolltext --title "List All Users" --msgbox "$all_users" 20 78

if [ $? -eq 0 ]
then
./menuDB
fi 
