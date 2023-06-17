local nmap = require('mgail.util.keymap').nmap

nmap("S", function ()
    local last_search = vim.fn.getcharsearch()
    local direction = last_search["forward"] == 1 and require("hop.hint").HintDirection.AFTER_CURSOR or require("hop.hint").HintDirection.BEFORE_CURSOR

    local hop = require("hop")
    local jump_target = require("hop.jump_target")
    local opts = setmetatable({direction = direction, current_line_only = true, hint_offset = last_search["until"]}, {__index = hop.opts})

    hop.hint_with(jump_target.jump_targets_for_current_line(jump_target.regex_by_case_searching(last_search.char, true, opts)), opts)
end)
nmap("<Leader>/", "<cmd>HopPattern<CR>")
