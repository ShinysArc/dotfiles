#!/bin/bash

# You can call this script like this:
# $./volume.sh up
# $./volume.sh down
# $./volume.sh mute

function get_volume {
    amixer get Master | grep '%' | head -n 1 | cut -d '[' -f 2 | cut -d '%' -f 1
}

function is_mute {
    amixer get Master | grep '%' | grep -oE '[^ ]+$' | grep off > /dev/null
}

function send_notification {
    volume=`get_volume`
    if [ "$volume" -le 20 ]; then
        ICON=audio-volume-low
    else if [ "$volume" -le 60 ]; then
            ICON=audio-volume-medium
        else 
            ICON=audio-volume-high
        fi
    fi
    NOTI_ID=$(notify-send.py/notify_send_py/notify_send_py.py "Volume" "$volume%" \
                         --hint string:image-path:$ICON boolean:transient:true \
                         --replaces-process "volume-popup")
}

case $1 in
    up)
    volume=`get_volume`
	# Set the volume on (if it was muted)
	pactl set-sink-mute 0 0 > /dev/null
	# Up the volume (+ 5%)
    if [ "$volume" -lt 100 ]; then
	    pactl set-sink-volume 0 +5% > /dev/null
    fi
    send_notification
	;;
    down)
	pactl set-sink-mute 0 0 > /dev/null
	pactl set-sink-volume 0 -5% > /dev/null
    send_notification
	;;
    mute)
    	# Toggle mute
	pactl set-sink-mute 0 toggle > /dev/null
    if is_mute ; then
        notify-send.py/notify_send_py/notify_send_py.py "Mute" \
            --hint string:image-path:audio-volume-muted boolean:transient:true \
            --replaces-process "volume-popup"
    else
        send_notification
    fi
	;;
esac
