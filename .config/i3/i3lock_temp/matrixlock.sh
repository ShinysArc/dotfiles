#!/bin/bash

kitty -e cmatrix &
sleep 0.3

#i3-msg fullscreen

i3lock -n; i3-msg kill
