require('nvim-treesitter.configs').setup {
    ensure_installed = { "java", "kotlin", "python", "typescript", "javascript", "lua", "css", "html", "rust", "go" },
    sync_install = false,
    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
        disable = { "python" }
    },
    autotag = {
        enable = true
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "<A-o>",
            scope_incremental = "grc",
            node_decremental = "<A-i>",
        },
    },
    textobjects = {
        select = {
            enable = true,
            lookahead = true,
            keymaps = {
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner",
            }
        },
        move = {
            enable = true,
            set_jumps = true,
            goto_next_start = {
                ["]a"] = "@parameter.inner"
            },
            goto_previous_start = {
                ["[a"] = "@parameter.inner"
            }
        }
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
