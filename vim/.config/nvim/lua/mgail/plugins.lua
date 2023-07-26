local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "williamboman/mason.nvim",
        dependencies = { "williamboman/mason-lspconfig.nvim" },
        init = function() require("mgail.config.mason") end
    },

    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build =
                "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build"
            },
            { "nvim-telescope/telescope-file-browser.nvim" }
        },
        init = function()
            require("mgail.config.telescope")
            require("mgail.keymap.telescope")
        end
    },
    {
        "ThePrimeagen/harpoon",
        dependencies = { "nvim-lua/plenary.nvim" },
        init = function()
            require("mgail.keymap.harpoon")
        end
    },
    {
        'phaazon/hop.nvim',
        branch = 'v1',
        init = function()
            require('hop').setup()
            require("mgail.keymap.hop")
        end
    },

    -- Themes
    "cocopon/iceberg.vim",
    "frenzyexists/aquarium-vim",
    "sainnhe/everforest",
    { "rose-pine/neovim", name = "rose-pine", init = function() vim.cmd("colorscheme rose-pine") end },
    "nyoom-engineering/oxocarbon.nvim",
    "m-gail/northernlights.vim",

    -- Git
    {
        "NeogitOrg/neogit",
        dependencies = 'nvim-lua/plenary.nvim',
        init = function()
            require("neogit").setup {}
        end
    },
    "sindrets/diffview.nvim",

    -- LSP
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "mfussenegger/nvim-jdtls",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/nvim-cmp",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            "glepnir/lspsaga.nvim",
        },
        init = function()
            require("mgail.config.lsp")
            require("mgail.config.lspsaga")
            require("mgail.config.luasnip")
            require("mgail.keymap.lsp")
        end
    },
    {
        "jose-elias-alvarez/null-ls.nvim",
        init = function()
            require("mgail.config.null_ls")
        end
    },
    {
        "numToStr/Comment.nvim",
        init = function()
            require("Comment").setup {
                pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
            }
        end
    },

    -- Debugging
    {
        'mfussenegger/nvim-dap',
        dependencies = {
            "rcarriga/nvim-dap-ui",
            'theHamsta/nvim-dap-virtual-text',
        },
        init = function()
            require("mgail.config.dap")
            require("mgail.keymap.dap")
        end
    },

    -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        init = function()
            require("mgail.config.treesitter")
        end
    },
    "nvim-treesitter/playground",
    {
        "nvim-treesitter/nvim-treesitter-context",
        init = function()
            require("mgail.config.treesitter_context")
        end
    },
    "nvim-treesitter/nvim-treesitter-textobjects",
    {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    },
    "windwp/nvim-ts-autotag",
    "JoosepAlviste/nvim-ts-context-commentstring",

    -- UI
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "kyazdani42/nvim-web-devicons" },
        init = function()
            require("mgail.config.lualine")
        end
    },
    {
        "folke/noice.nvim",
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify"
        },
        init = function()
            require("mgail.config.noice")
        end
    },
    {
        "goolord/alpha-nvim",
        dependencies = { "kyazdani42/nvim-web-devicons" },
        init = function()
            require("mgail.config.alpha")
        end
    },
    {
        "folke/which-key.nvim",
        init = function()
            require("mgail.config.whichkey")
        end
    },
    {
        "lewis6991/gitsigns.nvim",
        init = function()
            require("gitsigns").setup()
            require("mgail.keymap.gitsigns")
        end
    },

    -- Other
    {
        'm-gail/escape.nvim',
        init = function() require("mgail.keymap.escape") end
    },

    -- Notes
    -- {
    --     "nvim-neorg/neorg",
    --     build = ":Neorg sync-parsers",
    --     dependencies = { "nvim-lua/plenary.nvim" },
    --     config = function()
    --         require("mgail.config.neorg")
    --     end,
    -- },
    {
        'nvim-orgmode/orgmode',
        init = function()
            require('mgail.config.orgmode')
        end
    }

})
