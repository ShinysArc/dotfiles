#!/bin/bash

# You can call this script like this:
# $./brightness.sh up
# $./brightness.sh down

function get_brightness {
    xbacklight -get
}

function send_notification {
    brightness=`get_brightness`
    NOTI_ID=$(notify-send.py/notify_send_py/notify_send_py.py "Brightness" "$brightness%" \
                         --hint string:image-path:video-display boolean:transient:true \
                         --replaces-process "brightness-popup")
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
