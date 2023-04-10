local nmap = require('mgail.keymap').nmap
local updateTabStop = require('mgail.tabstop').updateTabStop


nmap("<leader>t2", function () updateTabStop(2) end)
nmap("<leader>t4", function () updateTabStop(4) end)
