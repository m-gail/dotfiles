local awful = require("awful")

awful.screen.connect_for_each_screen(function(s)
    awful.tag({ "", "", "", "", "", "", "", "", ""}, s, awful.layout.layouts[1])
end)
