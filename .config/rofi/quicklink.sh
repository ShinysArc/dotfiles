#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Mail : adi1090x@gmail.com
## Github : @adi1090x
## Reddit : @adi1090x

rofi_command="rofi -theme quicklink"

# Links
google=""
facebook=""
twitter=""
github=""
reddit=""
youtube=""

# Variable passed to rofi
options="$google\n$youtube\n$twitter\n$github\n$reddit\n$facebook"

chosen="$(echo -e "$options" | $rofi_command -p "Open In  :  Opera" -dmenu -selected-row 0)"
case $chosen in
    $google)
        opera --new-tab https://www.google.com
        ;;
    $youtube)
        opera --new-tab https://www.youtube.com
        ;;
    $facebook)
        opera --new-tab https://www.facebook.com
        ;;
    $twitter)
        opera --new-tab https://www.twitter.com
        ;;
    $github)
        opera --new-tab https://www.github.com
        ;;
    $reddit)
        opera --new-tab https://www.reddit.com
        ;;
esac
