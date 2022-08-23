require('packer').startup({ function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- External tool management
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"

    -- Buffer navigation
    use {
        'phaazon/hop.nvim',
        branch = 'v1',
        config = function()
            require 'hop'.setup()
        end
    }

    -- File navigation
    use {
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
    }
    use {
        'ThePrimeagen/harpoon',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons',
        }
    }

    -- Colorschemes
    use 'cocopon/iceberg.vim'
    use 'frenzyexists/aquarium-vim'
    use 'jaredgorski/spacecamp'
    use 'NLKNguyen/papercolor-theme'
    use 'drewtempelmeyer/palenight.vim'
    use 'ayu-theme/ayu-vim'
    use 'sainnhe/everforest'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'mfussenegger/nvim-jdtls'
    use {
        'jose-elias-alvarez/null-ls.nvim',
    }
    use{
        "glepnir/lspsaga.nvim",
        branch = "main",
    }

    -- Debugging
    use 'mfussenegger/nvim-dap'
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
    use { 'theHamsta/nvim-dap-virtual-text', requires = {"mfussenegger/nvim-dap", "nvim-treesitter/nvim-treesitter"} }

    -- Completion
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'nvim-treesitter/playground'
    use 'nvim-treesitter/nvim-treesitter-context'
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use 'windwp/nvim-ts-autotag'


    -- Snippets
    use 'L3MON4D3/LuaSnip'
    use {
        'rafamadriz/friendly-snippets',
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
        end
    }
    use 'saadparwaiz1/cmp_luasnip'

    -- Statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    }

    -- Git
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }

    -- Startup
    use {
        'goolord/alpha-nvim',
        requires = { 'kyazdani42/nvim-web-devicons' },
    }

    -- Commenting
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- Copilot
    use {
        'github/copilot.vim',
        disable = true
    }
end, config = {
    display = {
        open_fn = require('packer.util').float,
    }
} })
