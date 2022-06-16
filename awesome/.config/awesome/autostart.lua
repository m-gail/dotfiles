local awful = require("awful")

awful.spawn.with_shell("picom --experimental-backends")
awful.spawn.with_shell("setxkbmap -option caps:escape")
awful.spawn.with_shell('light-locker')

