#!/bin/bash

(setxkbmap -query | grep -q "layout:\s\+us") && setxkbmap fr || setxkbmap us
