local default_opts = { noremap = true, silent = true }

local function map(mode, keys, command, opts)
    vim.keymap.set(mode, keys, command, opts)
end

local function nmap(keys, command)
    map('n', keys, command, default_opts)
end

local function imap(keys, command)
    map('i', keys, command, default_opts)
end

local function smap(keys, command)
    map('s', keys, command, default_opts)
end

-- General

nmap("ZW", ":wa<CR>")

-- Hop

nmap("<Leader>w", "<cmd>HopWord<CR>")
nmap("<Leader>s", "<cmd>HopChar1<CR>")

-- LSP
-- Prefix: <leader>l

nmap("gd", ":lua vim.lsp.buf.definition()<CR>")
nmap("gD", ":lua vim.lsp.buf.declaration()<CR>")
nmap("gi", ":lua vim.lsp.buf.implementation()<CR>")
nmap("gr", ":lua vim.lsp.buf.references()<CR>")
nmap("K", ":lua vim.lsp.buf.hover()<CR>")
nmap("<C-k>", ":lua vim.lsp.buf.signature_help()<CR>")
nmap("<leader>lf", ":lua vim.lsp.buf.format { async = true }<CR>")
nmap("<leader>la", ":lua vim.lsp.buf.code_action()<CR>")
nmap("<leader>lr", ":lua vim.lsp.buf.rename()<CR>")

-- Harpoon
nmap("<leader><leader>a", ":lua require('harpoon.mark').add_file()<CR>")
nmap("<leader><leader>d", ":lua require('harpoon.mark').rm_file()<CR>")
nmap("<leader><leader>c", ":lua require('harpoon.mark').clear_all()<CR>")
nmap("<leader><leader>m", ":lua require('harpoon.ui').toggle_quick_menu()<CR>")

nmap("<leader><leader>u", ":lua require('harpoon.ui').nav_file(1)<CR>")
nmap("<leader><leader>i", ":lua require('harpoon.ui').nav_file(2)<CR>")
nmap("<leader><leader>o", ":lua require('harpoon.ui').nav_file(3)<CR>")
nmap("<leader><leader>p", ":lua require('harpoon.ui').nav_file(4)<CR>")

-- Telescope
nmap("<leader>ff", ":Telescope find_files<CR>")
nmap("<leader>fg", ":Telescope live_grep<CR>")

-- NvimTree
nmap("<leader>fb", ":NvimTreeFocus<CR>")

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
