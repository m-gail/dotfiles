local default_opts = require('keymap').default_opts
local nmap = require('keymap').nmap
local map = require('keymap').map
local imap = require('keymap').imap
local smap = require('keymap').smap

-- General

nmap("ZW", ":wa<CR>")
nmap("H", "^")
nmap("<C-h>", "<C-w>h")
nmap("<C-j>", "<C-w>j")
nmap("<C-k>", "<C-w>k")
nmap("<C-l>", "<C-w>l")
map("x", "<leader>p", "\"_dP", default_opts)
map({"x", "n"}, "<leader>c", "\"+", default_opts)

-- Hop

nmap("<Leader>w", "<cmd>HopWord<CR>")
nmap("<Leader>s", "<cmd>HopChar1<CR>")

-- LSP
-- Prefix: <leader>l

nmap("gd", ":lua vim.lsp.buf.definition()<CR>")
nmap("gD", ":lua vim.lsp.buf.declaration()<CR>")
nmap("gi", ":lua vim.lsp.buf.implementation()<CR>")
nmap("gr", ":lua vim.lsp.buf.references()<CR>")
nmap("<leader>lf", ":lua vim.lsp.buf.format { async = true }<CR>")
nmap("<leader>lr", ":lua vim.lsp.buf.rename()<CR>")
nmap("<leader>lR", ":LspRestart<CR>")

-- Harpoon
nmap("<leader><leader>a", require('harpoon.mark').add_file)
nmap("<leader><leader>d", require('harpoon.mark').rm_file)
nmap("<leader><leader>c", require('harpoon.mark').clear_all)
nmap("<leader><leader>m", require('harpoon.ui').toggle_quick_menu)

nmap("<leader><leader>u", function () require('harpoon.ui').nav_file(1) end)
nmap("<leader><leader>i", function () require('harpoon.ui').nav_file(2) end)
nmap("<leader><leader>o", function () require('harpoon.ui').nav_file(3) end)
nmap("<leader><leader>p", function () require('harpoon.ui').nav_file(4) end)

-- Telescope
nmap("<leader>ff", ":Telescope find_files<CR>")
nmap("<leader>fl", function() require("telescope.builtin").lsp_dynamic_workspace_symbols { symbols = {"interface", "class", "constructor", "function", "method"}} end)
nmap("<leader>fg", ":Telescope live_grep<CR>")

-- NvimTree
nmap("<leader>fb", ":NvimTreeFocus<CR>")
nmap("<leader>fB", ":NvimTreeFindFile<CR>")

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
