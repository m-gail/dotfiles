local nmap = require('mgail.util.keymap').nmap

nmap("<leader>fb", ":Telescope file_browser<CR>")
nmap("<leader>fB", function() require("telescope").extensions.file_browser.file_browser({ path = "%:p:h" }) end)
