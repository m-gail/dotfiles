local M = {}

local default_opts = { noremap = true, silent = true }
M.default_opts = default_opts

function M.map(mode, keys, command, opts, desc)
    if desc ~= nil then
        opts = vim.deepcopy(opts)
        opts.desc = desc
    end
    vim.keymap.set(mode, keys, command, opts)
end

function M.nmap(keys, command, desc)
    M.map('n', keys, command, default_opts, desc)
end

function M.vmap(keys, command, desc)
    M.map('v', keys, command, default_opts, desc)
end

function M.imap(keys, command, desc)
    M.map('i', keys, command, default_opts, desc)
end

function M.smap(keys, command, desc)
    M.map('s', keys, command, default_opts, desc)
end

return M
