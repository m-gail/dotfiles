local awful = require("awful")
local gears = require("gears")
local wibox = require("wibox")
local beautiful = require("beautiful")
local colors = require("config.colors")

local create_taglist = require("ui.bar.components.taglist")
local create_layoutbox = require("ui.bar.components.layoutbox")
local keyboard_layout = awful.widget.keyboardlayout()
local date = wibox.widget.textclock("%d.%m.%Y")
local clock = wibox.widget.textclock("%H:%M")
local create_module = require("ui.bar.components.module")

awful.screen.connect_for_each_screen(function(s)
    create_layoutbox(s)
    create_taglist(s)
    s.systray = wibox.widget.systray()
    s.systray.visible = true

    -- Create the wibox
    s.mywibox = awful.wibox({
        screen = s,
        width = s.geometry.width,
        height = beautiful.wibar_height
    })

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.container.background,
        bg = colors.base,
        {
            layout = wibox.layout.align.horizontal,
            -- Left widgets
            create_module(s.mytaglist),
            -- center widgets
            nil,
            -- Right widgets
            {
                layout = wibox.layout.fixed.horizontal,
                create_module(s.systray),
                -- create_module(keyboard_layout, " ", colors.blue),
                create_module(date, " ", colors.yellow),
                create_module(clock, " ", colors.red),
                create_module(s.mylayoutbox),
            },
        }
    }
end)
