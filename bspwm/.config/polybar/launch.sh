#!/usr/bin/env bash

POLYBAR_CMD=$(which polybar)
POLYBAR_MSG_CMD=$(which polybar-msg)

# Use git version if installed
if test -f ~/SourcePackages/polybar/bin/polybar; then
    POLYBAR_MSG_CMD=~/SourcePackages/polybar/bin/polybar-msg
    POLYBAR_CMD=~/SourcePackages/polybar/bin/polybar
fi

$POLYBAR_MSG_CMD cmd quit

for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    if [ $m = "DP-4" ]; then
        MONITOR=$m $POLYBAR_CMD main & disown
    else
        MONITOR=$m $POLYBAR_CMD secondary & disown
    fi
done
