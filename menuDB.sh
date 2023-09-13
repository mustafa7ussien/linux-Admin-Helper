#!/bin/bash

#check that who run script is a root
if [ $(id -u) -eq 0 ]
then 

menuDB=$(whiptail --title "LINUX Admin Helper" --menu " " 30 77 20  \
"Add User" "Add USER TO Database" \
"Edit User" "Edit User Name " \
"Remove User" "Remove User From Database" \
"Remove User Directory" "Remove User Directory" \
"Add Group" "Add Group to Database" \
"Remove Group" "Remove Group From Database" \
"Add User To Group" "Add Exist User To Group" \
"List All Users" "List All Users In Database" \
"List All Group" "List All Groups In Database" \
"View User Info" "View Sepcific User Info" \
"Enable User" "Enable  User To Login" \
"Disable User" "Disable User To Login" \
"Exit" "Exit" 3>&1 1>&2 2>&3)


	case $menuDB in

	  "Add User") ./adduser ;;
 	  "Edit User") ./edit_user ;;
 	  "Remove User") ./remove_user ;;
	  "Remove User Directory") ./remove_user_directory ;;
 	  "Add Group") ./add_group ;;
	  "Remove Group") ./remove_group ;;
	  "Add User To Group") ./add_user_to_group ;;
	  "List All Users") ./list_all_users ;;
	 "List All Group") ./list_all_group ;;
 	  "View User Info") ./view_user_info ;;
	  "Enable User") ./enable_user ;;
	  "Disable User") ./disable_user ;;
          "Exit") exit;;
	esac

else
whiptail --title "ALARRM" --msgbox "OPPS Only The ROOT Can run script" 8 78

fi
