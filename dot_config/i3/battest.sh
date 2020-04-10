#!/bin/bash

BAT_PATH=/sys/class/power_supply/BAT0
BAT_FULL_PATH=$BAT_PATH/charge_full
BAT_NOW_PATH=$BAT_PATH/charge_now

bat_full=$(cat $BAT_FULL_PATH)
bat_now=$(cat $BAT_NOW_PATH)
ratio=$(( 100 * $bat_now / $bat_full ))

if [ $ratio -lt 15 ]
then
    dunstify -t 5000 -r 2597 -u critical "Low Battery: $ratio %"
fi

echo $(date) >> /tmp/battest.log
