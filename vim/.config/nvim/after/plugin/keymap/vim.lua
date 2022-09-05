local default_opts = require('ihciM.keymap').default_opts
local nmap = require('ihciM.keymap').nmap
local map = require('ihciM.keymap').map
local imap = require('ihciM.keymap').imap
local smap = require('ihciM.keymap').smap

-- General

nmap("ZW", ":wa<CR>")
nmap("H", "^")
nmap("<C-h>", "<C-w>h")
nmap("<C-j>", "<C-w>j")
nmap("<C-k>", "<C-w>k")
nmap("<C-l>", "<C-w>l")
nmap("<C-d>", "<C-d>zz")
nmap("<C-u>", "<C-u>zz")
map("x", "<leader>p", "\"_dP", default_opts)
map({"x", "n"}, "<leader>y", "\"+y", default_opts)
map({"x", "n"}, "<leader>Y", "\"+Y", default_opts)

-- Hop

-- nmap("<Leader>w", "<cmd>HopWord<CR>")
-- nmap("<Leader>s", "<cmd>HopChar1<CR>")

-- Luasnip
local function jump_back()
    local ls = require("luasnip")
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end

local function jump_forward()
    require("luasnip").jump(1)
end

map("i", "<Tab>", "luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'",
    { silent = true, noremap = false, expr = true })
imap("<S-Tab>", jump_back)
smap("<Tab>", jump_forward)
smap("<S-Tab>", jump_back)
