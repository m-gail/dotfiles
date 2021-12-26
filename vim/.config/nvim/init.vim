:set number
:set relativenumber
:set autoindent
:set mouse=a
:set tabstop=4  
:set shiftwidth=4
:set expandtab

:colorscheme elflord

map i <Up>
map j <Left>
map k <Down>
noremap h i

call plug#begin()
   Plug 'https://github.com/vim-airline/vim-airline'
   Plug 'https://github.com/vim-airline/vim-airline-themes'
   Plug 'https://github.com/cocopon/iceberg.vim'
call plug#end()

source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/themes/iceberg.vim
