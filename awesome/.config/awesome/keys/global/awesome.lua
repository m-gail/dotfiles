local awful = require("awful")
local gears = require("gears")
local hotkeys_popup = require("awful.hotkeys_popup")

local keys = gears.table.join(
    awful.key(
      { modkey }, "e",
      hotkeys_popup.show_help,
      {
        description="show help", 
        group="awesome"
      }
    ),

    awful.key(
      { modkey, "Control" }, "r", 
      awesome.restart,
      {
        description = "reload awesome", 
        group = "awesome"
      }
    ),

    awful.key(
      { modkey, "Control"   }, "q", 
      awesome.quit,
      {
        description = "quit awesome", 
        group = "awesome"
      }
    )
)

return keys
