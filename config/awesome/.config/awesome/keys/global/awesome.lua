local awful = require("awful")
local gears = require("gears")
local hotkeys_popup = require("awful.hotkeys_popup")

local keys = gears.table.join(
    awful.key(
        { modkey }, "e",
        hotkeys_popup.show_help,
        {
            description = "show help",
            group = "awesome"
        }
    ),

    awful.key(
        { modkey, "Mod1" }, "r",
        awesome.restart,
        {
            description = "reload awesome",
            group = "awesome"
        }
    ),

    awful.key(
        { modkey, "Mod1" }, "q",
        awesome.quit,
        {
            description = "quit awesome",
            group = "awesome"
        }
    ),

    awful.key(
        { modkey }, "=",
        function()
            local systray = awful.screen.focused().systray
            systray.visible = not systray.visible
        end,
        {
            description = "change systray visibility",
            group = "awesome"
        }
    )
)

return keys
