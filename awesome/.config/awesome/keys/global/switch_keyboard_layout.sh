#!/bin/bash

KEYMAP=$(setxkbmap -query | grep "layout" | sed "s/layout:\s*//")

if [ $KEYMAP = "us" ]; then
    setxkbmap de
    notify-send "  de" "Keyboard layout switched"
else
    setxkbmap us -variant altgr-intl
    notify-send "  us" "Keyboard layout switched"
fi
