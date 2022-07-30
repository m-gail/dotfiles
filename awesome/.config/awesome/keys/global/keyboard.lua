local gears = require("gears")
local awful = require("awful")

local keys = gears.table.join(
    awful.key(
        { modkey }, "c",
        function ()
            awful.spawn.easy_async_with_shell(gears.filesystem.get_configuration_dir() .. "/keys/global/switch_keyboard_layout.sh")
        end,
        {
            description = "toggle keyboard layout",
            group = "keyboard"
        }
    )
)

return keys
