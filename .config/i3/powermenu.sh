#!/bin/bash

# options to be displayed
#option0="lock"
option1="Logout"
option2="Reboot"
option3="Shutdown"

# options passed into variable
options="$option1\n$option2\n$option3"

chosen="$(echo -e "$options" | rofi -font "Hack 16" -theme hello -lines 3 -dmenu -p "Power")"
case $chosen in
    $option1)
        i3-msg exit;;
    $option2)
        systemctl reboot;;
    $option3)
        systemctl poweroff;;
esac
