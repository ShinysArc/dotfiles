#!/bin/bash

# Get id of touchpad
s1=$(xinput list | grep -i touchpad)
[[ $s1 =~ id=[0-9]+ ]]
id_raw="${BASH_REMATCH[0]}"
[[ $id_raw =~ [0-9]+ ]]
id="${BASH_REMATCH[0]}"

# Get tapping prop number
s2=$(xinput list-props $id | grep -i "tapping enabled")
[[ $s2 =~ [0-9]+ ]]
prop1="${BASH_REMATCH[0]}"

# Get scrolling prop number
s3=$(xinput list-props $id | grep -i "natural")
[[ $s3 =~ [0-9]+ ]]
prop2="${BASH_REMATCH[0]}"

# Enable touchpad tapping
xinput set-prop $id $prop1 1
xinput set-prop $id $prop2 1

echo "Enabled touchpad tapping: id=$id prop=$prop1"
echo "Enabled natural scrolling: id=$id prop=$prop2"
