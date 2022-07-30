local M = {}

local default_opts = { noremap = true, silent = true }
    M.default_opts = default_opts

function M.map(mode, keys, command, opts)
    vim.keymap.set(mode, keys, command, opts)
end

function M.nmap(keys, command)
    M.map('n', keys, command, default_opts)
end

function M.imap(keys, command)
    M.map('i', keys, command, default_opts)
end

function M.smap(keys, command)
    M.map('s', keys, command, default_opts)
end


return M
