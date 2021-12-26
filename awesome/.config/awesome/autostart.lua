local awful = require("awful")

awful.spawn.with_shell("picom --experimental-backends")
awful.spawn.with_shell('xmodmap -e "clear lock"')
awful.spawn.with_shell('xmodmap -e "keysym Caps_Lock = Escape"')
awful.spawn.with_shell('light-locker')