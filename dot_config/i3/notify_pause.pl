#!/bin/perl

system("dunstify -t 2000 \"Do Not Disturb ON\"");
sleep(2);
system("notify-send \"DUNST_COMMAND_PAUSE\"");
