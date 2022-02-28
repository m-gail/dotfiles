:set number
:set relativenumber
:set autoindent
:set mouse=a
:set tabstop=4  
:set shiftwidth=4
:set expandtab

:colorscheme elflord

call plug#begin()
   Plug 'https://github.com/vim-airline/vim-airline'
   Plug 'https://github.com/vim-airline/vim-airline-themes'
   Plug 'https://github.com/cocopon/iceberg.vim'
   Plug 'https://github.com/preservim/nerdtree'
   Plug 'https://github.com/mhinz/vim-startify'
   Plug 'https://github.com/ryanoasis/vim-devicons'
   Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}
   Plug 'https://github.com/LnL7/vim-nix'
call plug#end()

source $HOME/.config/nvim/plugins/airline.vim
source $HOME/.config/nvim/plugins/iceberg.vim
source $HOME/.config/nvim/plugins/startify.vim
