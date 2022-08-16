local nmap = require('ihciM.keymap').nmap
local updateTabStop = require('ihciM.tabstop').updateTabStop


nmap("<leader>t2", function () updateTabStop(2) end)
nmap("<leader>t4", function () updateTabStop(4) end)
