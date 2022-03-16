let mapleader=" "

:set number
:set relativenumber
:set autoindent
:set mouse=a
:set tabstop=4  
:set shiftwidth=4
:set expandtab

call plug#begin()
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'cocopon/iceberg.vim'
    Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }
    Plug 'NLKNguyen/papercolor-theme'

    Plug 'https://github.com/mhinz/vim-startify'
    Plug 'https://github.com/easymotion/vim-easymotion'

    Plug 'https://github.com/preservim/nerdtree'
    Plug 'https://github.com/ryanoasis/vim-devicons'

    Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}
    Plug 'https://github.com/LnL7/vim-nix'
call plug#end()

source $HOME/.config/nvim/plugins/airline.vim
source $HOME/.config/nvim/plugins/iceberg.vim
source $HOME/.config/nvim/plugins/startify.vim
source $HOME/.config/nvim/plugins/easymotion.vim
source $HOME/.config/nvim/map.vim
