#!/bin/bash

kitty -e cmatrix -B &
sleep 0.3

i3lock -n; i3-msg kill
