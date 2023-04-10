local default_opts = require('mgail.keymap').default_opts
local nmap = require('mgail.keymap').nmap
local map = require('mgail.keymap').map
local imap = require('mgail.keymap').imap
local smap = require('mgail.keymap').smap

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

nmap("S", function ()
    local last_search = vim.fn.getcharsearch()
    local direction = last_search["forward"] == 1 and require("hop.hint").HintDirection.AFTER_CURSOR or require("hop.hint").HintDirection.BEFORE_CURSOR

    local hop = require("hop")
    local jump_target = require("hop.jump_target")
    local opts = setmetatable({direction = direction, current_line_only = true, hint_offset = last_search["until"]}, {__index = hop.opts})

    hop.hint_with(jump_target.jump_targets_for_current_line(jump_target.regex_by_case_searching(last_search.char, true, opts)), opts)
end)
nmap("<Leader>/", "<cmd>HopPattern<CR>")

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

-- map("i", "<Tab>", "luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'",
--     { silent = true, noremap = false, expr = true })
-- imap("<S-Tab>", jump_back)
-- smap("<Tab>", jump_forward)
-- smap("<S-Tab>", jump_back)
