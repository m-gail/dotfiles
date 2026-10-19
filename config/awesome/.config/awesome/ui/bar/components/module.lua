local wibox = require("wibox")
local beautiful = require("beautiful")
local colors = require("config.colors")
local gears = require("gears")

local function create_module(child, icon, icon_color)
    local content = {
        layout = wibox.layout.fixed.horizontal,
    }

    if icon ~= nil then
        table.insert(content, {
            layout = wibox.widget.background,
            fg = icon_color,
            wibox.widget.textbox(icon)
        })
    end
    table.insert(content, child)

    return {
        layout = wibox.container.margin,
        margins = beautiful.module_outer_margin,
        {
            layout = wibox.container.background,
            bg = colors.surface,
            fg = colors.text,
            shape = gears.shape.rounded_rect,
            {
                layout = wibox.container.margin,
                left = beautiful.module_inner_margin,
                right = beautiful.module_inner_margin,
                content
            }
        }
    }
end

return create_module
