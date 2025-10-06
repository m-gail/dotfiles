local kind_icons = {
    Text = "󰉿",
    Method = "󰆧",
    Function = "󰊕",
    Constructor = "",
    Field = "󰜢",
    Variable = "󰀫",
    Class = "󰠱",
    Interface = "",
    Module = "",
    Property = "󰜢",
    Unit = "󰑭",
    Value = "󰎠",
    Enum = "",
    Keyword = "󰌋",
    Snippet = "",
    Color = "󰏘",
    File = "󰈙",
    Reference = "󰈇",
    Folder = "󰉋",
    EnumMember = "",
    Constant = "󰏿",
    Struct = "󰙅",
    Event = "",
    Operator = "󰆕",
    TypeParameter = "",
}

local function create_mapping(mapping)
    return {
        i = mapping,
        c = mapping
    }
end

return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/cmp-nvim-lsp",
        "saadparwaiz1/cmp_luasnip",
    },
    config = function()
        local cmp = require('cmp')

        local cmp_mappings = {
            ['<C-b>'] = create_mapping(cmp.mapping.scroll_docs(-4)),
            ['<C-f>'] = create_mapping(cmp.mapping.scroll_docs(4)),
            ['<C-Space>'] = create_mapping(cmp.mapping.complete()),
            ['<C-e>'] = create_mapping(cmp.mapping.abort()),
            ['<A-l>'] = create_mapping(cmp.mapping.confirm({ select = true }))
        }

        cmp.setup({
            performance = {
                debounce = 15,
                throttle = 15
            },
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },
            formatting = {
                format = function(_, vim_item)
                    vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind)
                    return vim_item
                end
            },
            view = {
                entries = {
                    selection_order = "near_cursor"
                }
            },
            completion = {
                completeopt = "menu,menuone,noselect"
            },
            mapping = cmp.mapping.preset.insert(cmp_mappings),
            sources = cmp.config.sources(
                {
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' },
                    { name = 'path' },
                    { name = 'buffer' },
                }
            ),
            experimental = {
                ghost_text = true
            }
        })

        cmp.setup.cmdline('/', {
            mapping = cmp.mapping.preset.cmdline(cmp_mappings),
            sources = {
                { name = 'buffer' }
            }
        })

        cmp.setup.cmdline(':', {
            mapping = cmp.mapping.preset.cmdline(cmp_mappings),
            sources = cmp.config.sources({
                { name = 'path' },
                { name = 'cmdline' }
            })
        })
    end
}
