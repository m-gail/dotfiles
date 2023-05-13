local awful = require("awful")
local gears = require("gears")
local wibox = require("wibox")
local beautiful = require("beautiful")
local colors = require("config.colors")

local seperator_left = require("ui.bar.components.seperator_left")
local seperator_right = require("ui.bar.components.seperator_right")
local create_taglist = require("ui.bar.components.taglist")
local create_layoutbox = require("ui.bar.components.layoutbox")
local date = wibox.widget.textclock(" %d.%m.%Y")
local clock = wibox.widget.textclock(" %H:%M")

awful.screen.connect_for_each_screen(function(s)

    create_layoutbox(s)
    create_taglist(s)

    -- Create the wibox
    s.mywibox = awful.wibox({
        screen = s,
        width = s.geometry.width,
        height = beautiful.wibar_height
    })

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.container.background,
        bg = colors.background,
        {
            layout = wibox.layout.align.horizontal,
            -- Left widgets
            {
                layout = wibox.layout.fixed.horizontal,
                {
                    layout = wibox.container.background,
                    bg = colors.background,
                    {
                        layout = wibox.container.margin,
                        left = beautiful.taglist_spacing,
                        right = beautiful.taglist_spacing,
                        s.mytaglist
                    }
                },
                {
                    layout = wibox.container.background,
                    fg = colors.background,
                    bg = colors.background_alt_1,
                    seperator_left
                },
                {
                    layout = wibox.container.background,
                    fg = colors.background_alt_1,
                    bg = colors.background,
                    seperator_left
                },
            },
            nil,
            -- Right widgets
            {
                layout = wibox.layout.fixed.horizontal,
                {
                    layout = wibox.container.background,
                    bg = colors.accent,
                    fg = colors.background_alt_1,
                    seperator_right

                },
                {
                    layout = wibox.container.background,
                    bg = colors.background_alt_1,
                    fg = colors.background,
                    seperator_right

                },
                {
                    layout = wibox.container.margin,
                    left = 10,
                    top = 4,
                    bottom = 4,
                    wibox.widget.systray(),
                },
                {
                    layout = wibox.container.background,
                    bg = colors.accent,
                    fg = colors.background_alt_1,
                    seperator_right

                },
                {
                    layout = wibox.container.background,
                    bg = colors.background_alt_1,
                    fg = colors.forgeround,
                    {
                        layout = wibox.layout.fixed.horizontal,
                        {
                            layout = wibox.container.margin,
                            left = beautiful.taglist_spacing,
                            right = beautiful.taglist_spacing / 2,
                            date

                        },
                        {
                            layout = wibox.container.background,
                            fg = colors.background,
                            seperator_right

                        }
                    }
                },
                {
                    layout = wibox.container.background,
                    bg = colors.background,
                    fg = colors.forgeround,
                    {
                        layout = wibox.layout.fixed.horizontal,
                        {
                            layout = wibox.container.margin,
                            left = beautiful.taglist_spacing,
                            right = beautiful.taglist_spacing / 2,
                            clock
                        },
                        {
                            layout = wibox.container.background,
                            fg = colors.green,
                            seperator_right

                        }
                    }

                },
                {
                    layout = wibox.container.background,
                    bg = colors.green,
                    {
                        layout = wibox.container.margin,
                        margins = 4,
                        s.mylayoutbox
                    }
                }
            },
        }
    }

end)
