local gears = require("gears")
local awful = require("awful")

local keys = gears.table.join(
    awful.key(
        { modkey, "Control" }, "n",
        function ()
            local c = awful.client.restore()
            -- Focus restored client
            if c then
            c:emit_signal(
                "request::activate", "key.unminimize", {raise = true}
            )
            end
        end,
        {
            description = "restore minimized", 
            group = "client"
        }
    )
)

return keys