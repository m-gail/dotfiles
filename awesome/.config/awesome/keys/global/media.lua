local awful = require("awful")
local gears = require("gears")

local keys = gears.table.join(
    awful.key(
      { }, "XF86AudioPlay", 
      function () awful.util.spawn("playerctl play-pause") end
    ),
    awful.key(
      { }, "XF86AudioPause", 
      function () awful.util.spawn("playerctl play-pause") end
    ),
    awful.key(
      { }, "XF86AudioNext", 
      function () awful.util.spawn("playerctl next") end
    ),
    awful.key(
      { }, "XF86AudioPrev", 
      function () awful.util.spawn("playerctl previous") end
    )
)

return keys
