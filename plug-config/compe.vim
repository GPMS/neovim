luafile ~/.config/nvim/lua/plugins/nvim-compe.lua

inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <C-l>     compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-j>     pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <silent><expr> <C-k>     pumvisible() ? "\<C-p>" : "\<C-k>"
