local configs = {
    lua_ls = {
        settings = {
            Lua = {
                format = {
                    enable = false
                },
                diagnostics = {
                    globals = { 'vim', 'use' }
                },
                hint = {
                    enable = true,
                    arrayIndex = 'Disable'
                },
                workspace = {
                    -- Make the server aware of Neovim runtime files
                    library = {
                        [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                        [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true
                    }
                }
            }
        }
    },
    pyright = {},
    rust_analyzer = {},
    kotlin_language_server = {},
    html = {},
    cssls = {},
    jsonls = {},
    tailwindcss = {},
    emmet_language_server = {},
    svelte = {},
    volar = {},
    vuels = {},
    gopls = {},
    ansiblels = {},
    vimls = {},
    taplo = {},
    bashls = {},
    clangd = {},
    zls = {
        settings = {
            enable_autofix = false
        }
    },
    asm_lsp = {}
}

return configs
