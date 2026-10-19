#!/usr/bin/env bash

PASSWORD=$(zenity --password)

echo $PASSWORD | keepassxc-cli clip ~/Documents/Passwords.kdbx $1 --quiet | xclip -sel clipboard
notify-send "KeePassXC cleared clipboard"
