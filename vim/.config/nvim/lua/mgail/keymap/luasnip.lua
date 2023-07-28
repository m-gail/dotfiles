local imap = require('mgail.util.keymap').imap
local smap = require('mgail.util.keymap').smap

local function jump_back()
    local ls = require("luasnip")
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end

local function jump_forward()
    require("luasnip").jump(1)
end

imap("<A-n>", jump_forward)
smap("<A-n>", jump_forward)

imap("<A-p>", jump_back)
smap("<A-p>", jump_back)
