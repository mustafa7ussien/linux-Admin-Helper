!/bin/bash

#read group from whiptail
groupname=$(whiptail --inputbox "Enter Name Of Group You Need Remove" 8 39 --title "Remove Group" 3>&1 1>&2 2>&3)

status=$?
if [ $status = 0 ]; then

#check group exist or not
sudo getent group $groupname &>/dev/null
if [ $? -eq 0 ]
        then
        sudo groupdel $groupname &> /dev/null

        whiptail --title "Done" --msgbox "Group $groupname is Removed Successflly" 8 78
        ./menuDB
        else
        whiptail --title "OOPS" --msgbox "The $groupname does not exist" 8 78
        ./menuDB
        fi

else
    ./menuDB
fi
