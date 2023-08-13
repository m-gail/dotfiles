local nmap = require('mgail.util.keymap').nmap

nmap("<leader>gdo", ":DiffviewOpen<CR>")
nmap("<leader>gdc", ":DiffviewClose<CR>")
nmap("<leader>gdf", ":DiffviewFileHistory %<CR>")
