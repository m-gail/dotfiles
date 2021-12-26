local awful = require("awful")
local gears = require("gears")

local keys = gears.table.join(
    awful.key(
      { modkey, "Control" }, "k", 
      function () awful.screen.focus_relative(1) end,
      {
        description = "focus the next screen", 
        group = "screen"
      }
    ),

    awful.key(
      { modkey, "Control" }, "i", 
      function () awful.screen.focus_relative(-1) end,
      {
        description = "focus the previous screen", 
        group = "screen"
      }
    )
)

return keys
