  GNU nano 5.6.1                      edit_id                       Modified  
#!/bin/bash

#Enter user  to Edit name to it
name=$(whiptail --inputbox "Enter the name you need Edit Name:" 8 78 --title "Edit Name" 3>&1 1>&2 2>&3)

#Name that modify to user
username=$(whiptail --inputbox "Enter the new user Name:" 8 78 --title "Edit Name" 3>&1 1>&2 2>&3)

#check user is exist
if id "$name" >/dev/null 2>&1; then
    #modify the user Name
    sudo usermod -l $username $name
    whiptail --title "Edit User" --msgbox "User ID To  $name has been modifie" 8 78 3>&1 1>&2 2>&3)
else
   whiptail --title "Edit User" --msgbox "User $username does not exist." 8 78 3>&1 1>&2 2>&3)

fi
