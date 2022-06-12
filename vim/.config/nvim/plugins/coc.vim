" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
noremap <leader>f <Plug>(coc-format)
noremap <A-CR> <Plug>(coc-codeaction-cursor)
noremap gd <Plug>(coc-definition)
