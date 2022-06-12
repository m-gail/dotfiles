noremap <leader><leader>a :lua require("harpoon.mark").add_file()<CR>
noremap <leader><leader>d :lua require("harpoon.mark").rm_file()<CR>
noremap <leader><leader>c :lua require("harpoon.mark").clear_all()<CR>
noremap <leader><leader>m :lua require("harpoon.ui").toggle_quick_menu()<CR>

noremap <leader><leader>u :lua require("harpoon.ui").nav_file(1)<CR>
noremap <leader><leader>i :lua require("harpoon.ui").nav_file(2)<CR>
noremap <leader><leader>o :lua require("harpoon.ui").nav_file(3)<CR>
noremap <leader><leader>p :lua require("harpoon.ui").nav_file(4)<CR>

