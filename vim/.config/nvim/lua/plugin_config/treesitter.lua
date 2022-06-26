require('nvim-treesitter.configs').setup {
    ensure_installed = { "java", "python", "javascript", "lua", "css", "html", "rust" },
    sync_install = false,
    highlight = {
        enable = true,
    },
    indent = {
        enable = true
    }
}

function _G.custom_fold_text()
    local line = vim.fn.getline(vim.v.foldstart)
    local line_count = vim.v.foldend - vim.v.foldstart + 1
    return line .. "  " .. line_count .. " lines"
end

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 1000
vim.opt.foldtext = "v:lua.custom_fold_text()"
vim.opt.fillchars = { fold = " " }
