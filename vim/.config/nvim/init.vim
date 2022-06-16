let mapleader=" "

set number
set relativenumber
set autoindent
set mouse=a
set tabstop=4  
set shiftwidth=4
set expandtab
set nocompatible
set showtabline=1

call plug#begin()
    Plug 'mhinz/vim-startify'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'preservim/nerdtree'
    Plug 'ryanoasis/vim-devicons'

    Plug 'cocopon/iceberg.vim'
    " Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }
    " Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
    " Plug 'NLKNguyen/papercolor-theme'
    " Plug 'ghifarit53/tokyonight-vim'

    Plug 'phaazon/hop.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'ThePrimeagen/harpoon'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'sheerun/vim-polyglot'
    Plug 'rust-lang/rust.vim'
call plug#end()

source $HOME/.config/nvim/plugins/airline.vim
source $HOME/.config/nvim/plugins/iceberg.vim
source $HOME/.config/nvim/plugins/startify.vim
source $HOME/.config/nvim/plugins/hop.vim
source $HOME/.config/nvim/plugins/fzf.vim
source $HOME/.config/nvim/plugins/coc.vim
source $HOME/.config/nvim/plugins/nerdtree.vim
source $HOME/.config/nvim/plugins/harpoon.vim
source $HOME/.config/nvim/map.vim
