local nmap = require('mgail.util.keymap').nmap
local map = require('mgail.util.keymap').map
local default_options = require('mgail.util.keymap').default_opts

nmap("K", vim.lsp.buf.hover)

nmap("<leader>rn", vim.lsp.buf.rename, "rename")
nmap("gd", require("telescope.builtin").lsp_definitions, "go to definition")
nmap("gD", ":lua vim.lsp.buf.declaration()<CR>", "go to declaration")
nmap("gI", require("telescope.builtin").lsp_implementations, "go to implementation")
nmap("gr", require("telescope.builtin").lsp_references, "show references")

nmap("<leader>sa", vim.lsp.buf.code_action, "code action")
nmap("<leader>sd", vim.diagnostic.open_float, "show line diagnostics")
map({ "n", "v" }, "<leader>sf", function() vim.lsp.buf.format { async = true } end, default_options, "format")
nmap("<leader>sr", ":LspRestart<CR>", "restart lsp")

nmap("[d", vim.diagnostic.goto_prev, "go to previous diagnostic")
nmap("]d", vim.diagnostic.goto_next, "go to next diagnostic")
nmap("[De", function() vim.diagnostic.goto_prev { severity = vim.diagnostic.severity.ERROR } end,
    "go to previous error diagnostic")
nmap("]De", function() vim.diagnostic.goto_next { severity = vim.diagnostic.severity.ERROR } end,
    "go to next error diagnostic")
