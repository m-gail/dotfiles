local awful = require('awful')

local M = {}

function M.focus(tag_number)
    awful.screen.focused().tags[tag_number]:view_only()
end

function M.move_to(tag_number)
    if client.focus then
        local tag = client.focus.screen.tags[tag_number]
        if tag then
            client.focus:move_to_tag(tag)
        end
    end
end

return M
