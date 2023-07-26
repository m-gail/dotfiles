#!/usr/bin/env bash

POLYBAR_CMD=$(which polybar)
POLYBAR_MSG_CMD=$(which polybar-msg)

# Use git version if installed for systray module support
if test -f ~/SourcePackages/polybar/build/bin/polybar; then
    POLYBAR_MSG_CMD=~/SourcePackages/polybar/build/bin/polybar-msg
    POLYBAR_CMD=~/SourcePackages/polybar/build/bin/polybar
fi

$POLYBAR_MSG_CMD cmd quit

for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    if [ $m = $(xrandr --query | grep " connected primary" | cut -d" " -f1) ]; then
        MONITOR=$m $POLYBAR_CMD main & disown
    else
        MONITOR=$m $POLYBAR_CMD secondary & disown
    fi
done
