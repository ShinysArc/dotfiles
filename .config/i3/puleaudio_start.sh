#!/bin/bash

# Kill pulseaudio daemon.
pulseaudio --kill
sleep 2

pulseaudio -v

sleep 2

# Start pulseaudio daemon.
pulseaudio --start
