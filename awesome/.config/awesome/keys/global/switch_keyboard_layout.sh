#!/bin/bash

KEYMAP=$(setxkbmap -query | grep "layout" | sed "s/layout:\s*//")

if [ $KEYMAP = "us" ]; then
    setxkbmap de -option caps:escape
    notify-send -i input-keyboard "de" "Keyboard layout switched"
else
    setxkbmap us -variant altgr-intl -option caps:escape
    notify-send -i input-keyboard "us" "Keyboard layout switched"
fi
