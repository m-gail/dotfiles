local gears = require("gears")
local awful = require("awful")

local keys = {}

for i = 1, 9 do
    keys = gears.table.join(keys,
        awful.key(
            { modkey }, "#" .. i + 9,
            function ()
                local screen = awful.screen.focused()

                local tag = screen.tags[i]
                tag:view_only()
            end,
            {
                description = "view tag #"..i, 
                group = "tag"
            }
        ),

        awful.key(
            { modkey, "Control" }, "#" .. i + 9,
            function ()
                local screen = awful.screen.focused()
                local tag = screen.tags[i]
                if tag then
                    awful.tag.viewtoggle(tag)
                end
            end,
            {
                description = "toggle tag #" .. i, 
                group = "tag"
            }
        ),

        awful.key(
            { modkey, "Shift" }, "#" .. i + 9,
                function ()
                    if client.focus then
                        local tag = client.focus.screen.tags[i]
                        if tag then
                            client.focus:move_to_tag(tag)
                        end
                    end
                end,
            {
                description = "move focused client to tag #"..i, 
                group = "tag"
            }
        ),

        awful.key(
            { modkey, "Control", "Shift" }, "#" .. i + 9,
            function ()
                if client.focus then
                    local tag = client.focus.screen.tags[i]
                    if tag then
                        client.focus:toggle_tag(tag)
                    end
                end
            end,
            {
                description = "toggle focused client on tag #" .. i, 
                group = "tag"
            }
        )
    )
end

return keys
