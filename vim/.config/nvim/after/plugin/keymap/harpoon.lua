local nmap = require('ihciM.keymap').nmap

nmap("<leader>ha", require('harpoon.mark').add_file)
nmap("<leader>hd", require('harpoon.mark').rm_file)
nmap("<leader>hc", require('harpoon.mark').clear_all)
nmap("<leader>H", require('harpoon.ui').toggle_quick_menu)

nmap("<leader>j", function () require('harpoon.ui').nav_file(1) end)
nmap("<leader>k", function () require('harpoon.ui').nav_file(2) end)
nmap("<leader>l", function () require('harpoon.ui').nav_file(3) end)
nmap("<leader>;", function () require('harpoon.ui').nav_file(4) end)
nmap("<leader>J", function () require('harpoon.ui').nav_file(5) end)
nmap("<leader>K", function () require('harpoon.ui').nav_file(6) end)
nmap("<leader>L", function () require('harpoon.ui').nav_file(7) end)
nmap("<leader>:", function () require('harpoon.ui').nav_file(8) end)
