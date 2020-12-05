#!/bin/bash

# You can call this script like this:
# $./brightness.sh up
# $./brightness.sh down

function get_brightness {
    xbacklight -get
}

function send_notification {
    brightness_float=`get_brightness`
    brightness_int="${brightness_float%.*}%"
    NOTI_ID=$(notify-send "Brightness" "$brightness_int")
}

case $1 in
    up)
        xbacklight +10
        send_notification
        ;;
    down)
        xbacklight -10
        send_notification
        ;;
esac
