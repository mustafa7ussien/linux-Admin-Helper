#!/bin/bash

menuDB=$(whiptail --title "Edit User" --menu " " 30 77 20  \
"Edit Name" "Edit Name Of User" \
"Edit ID" "Edit ID To User " 3>&1 1>&2 2>&3)


case $menuDB in

          "Edit Name") ./edit_name ;;
          "Edit ID") ./edit_id ;;
esac
