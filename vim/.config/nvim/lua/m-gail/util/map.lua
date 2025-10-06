local M = {}

M.default_opts = {
    silent = true,
    remap = false
}

---overrides vim.keymap.set with default options
---@param mode string | table
---@param key string
---@param command string | function
---@param desc string | nil
---@param opts table | nil
function M.map(mode, key, command, desc, opts)
    local override_opts = opts or {}
    local full_opts = vim.tbl_deep_extend("force", M.default_opts, override_opts)
    full_opts = vim.tbl_deep_extend("force", full_opts, { desc = desc })
    vim.keymap.set(mode, key, command, full_opts)
end

function M.nmap(key, command, desc, opts)
    M.map("n", key, command, desc, opts)
end

return M
