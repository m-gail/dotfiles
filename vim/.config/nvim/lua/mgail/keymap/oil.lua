local nmap = require('mgail.util.keymap').nmap

nmap("<leader>fB", "<cmd>Oil --float<CR>", "Open file browser")
nmap("<leader>fb", "<cmd>Oil --float .<CR>", "Open file browser")
