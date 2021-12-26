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

    -- Add padding equal to bar top padding
    s.padding = {
      top = beautiful.useless_gap * 2
    } 

    -- Create the wibox
    s.mywibox = awful.wibox({ 
      screen = s, 
      width = s.geometry.width - beautiful.useless_gap * 4,
      height = beautiful.wibar_height
    })

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.container.background,
        bg = colors.primary,
        {
          layout = wibox.layout.align.horizontal,
          -- Left widgets
          { 
              layout = wibox.layout.fixed.horizontal,
              {
                layout = wibox.container.background,
                bg = colors.secondary,
                {
                  layout = wibox.container.margin,
                  left = beautiful.taglist_spacing,
                  right = beautiful.taglist_spacing,
                  s.mytaglist
                }
              },
              {
                layout = wibox.container.background,
                fg = colors.secondary,
                bg = colors.accent_dark_2,
                seperator_left
              },
              {
                layout = wibox.container.background,
                fg = colors.accent_dark_2,
                bg = colors.accent_dark_1,
                seperator_left
              },
              {
                layout = wibox.container.background,
                fg = colors.accent_dark_1,
                bg = colors.accent,
                seperator_left
              },
              {
                layout = wibox.container.background,
                fg = colors.accent,
                seperator_left
              }
          },
          nil,
          -- Right widgets
          { 
              layout = wibox.layout.fixed.horizontal,
              {
                layout = wibox.container.background,
                fg = colors.accent,
                seperator_right
            
              },
              {
                layout = wibox.container.background,
                bg = colors.accent,
                fg = colors.accent_dark_1,
                seperator_right
            
              },
              {
                layout = wibox.container.background, 
                bg = colors.accent_dark_1,
                fg = colors.text,
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
                    fg = colors.accent_dark_2,
                    seperator_right
                
                  }
                }
              },
              {
                layout = wibox.container.background,
                bg = colors.accent_dark_2,
                fg = colors.text,
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
                    fg = colors.secondary,
                    seperator_right
                
                  }
                }
                
              },
              {
                layout = wibox.container.background,
                bg = colors.secondary,
                {
                  layout = wibox.container.margin,
                  margins = 8,
                  s.mylayoutbox
                }
              }
          },
        }
    }

    s.mywibox.x = s.geometry.x + beautiful.useless_gap * 2
    s.mywibox.y = s.geometry.y + beautiful.useless_gap * 2
end)