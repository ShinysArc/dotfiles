#!/bin/bash

# You can call this script like this:
# $./brightness.sh up
# $./brightness.sh down
# $./brightness.sh mute

function get_brightness {
    xbacklight -get
}

function send_notification {
    brightness=`get_brightness`
    bar=$(seq -s "─" $(($brightness / 5)) | sed 's/[0-9]//g')
    # Send the notification
    dunstify -t 5000 -r 2593 -u normal "$bar"
}

case $1 in
    up)
        xbacklight +5
        send_notification
        ;;
    down)
        xbacklight -5
        send_notification
        ;;
esac
