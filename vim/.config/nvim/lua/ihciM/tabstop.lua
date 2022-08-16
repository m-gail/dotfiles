local M = {}


function M.updateTabStop(value)
    vim.opt.tabstop = value
    vim.opt.shiftwidth = value
    print("Tabstop is now " .. value)
end

return M
