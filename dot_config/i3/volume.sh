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

case $1 in
    up)
	# Set the volume on (if it was muted)
	pactl set-sink-mute 0 0 > /dev/null
	# Up the volume (+ 5%)
	pactl set-sink-volume 0 +2% > /dev/null
	;;
    down)
	pactl set-sink-mute 0 0 > /dev/null
	pactl set-sink-volume 0 -2% > /dev/null
	;;
    mute)
    	# Toggle mute
	pactl set-sink-mute 0 toggle > /dev/null
	;;
esac
