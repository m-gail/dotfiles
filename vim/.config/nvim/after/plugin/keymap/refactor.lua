local nmap = require('mgail.keymap').nmap

nmap("<leader>rn", function() require('lspsaga.rename'):lsp_rename() end, "rename")
