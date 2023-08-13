local nmap = require('mgail.util.keymap').nmap

nmap("K", "<cmd>Lspsaga hover_doc<CR>")

nmap("gpd", function() require('lspsaga.definition'):peek_definition(1) end, "preview definition")
nmap("<leader>rn", function() require('lspsaga.rename'):lsp_rename() end, "rename")
nmap("gd", ":lua vim.lsp.buf.definition()<CR>", "go to definition")
nmap("gD", ":lua vim.lsp.buf.declaration()<CR>", "go to declaration")
nmap("gI", ":lua vim.lsp.buf.implementation()<CR>", "go to implementation")
nmap("gr", ":lua vim.lsp.buf.references()<CR>", "show references")

nmap("<leader>sa", ":Lspsaga code_action<CR>", "code action")
nmap("<leader>sd", ":Lspsaga show_line_diagnostics<CR>", "show line diagnostics")
nmap("<leader>sf", ":lua vim.lsp.buf.format { async = true }<CR>", "format")
nmap("<leader>sr", ":LspRestart<CR>", "restart lsp")

nmap("[d", vim.diagnostic.goto_prev, "go to previous diagnostic")
nmap("]d", vim.diagnostic.goto_next, "go to next diagnostic")
