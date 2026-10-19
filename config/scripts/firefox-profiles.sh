#!/bin/bash

PROFILE=$(cat ~/.mozilla/firefox/profiles.ini | grep Name | awk -F "=" '{ print $2 }' | grep -E "^dev-" | rofi -dmenu)

firefox --class ff-$PROFILE -P $PROFILE --new-window
