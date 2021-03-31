luafile ~/.config/nvim/lua/lsp/init.lua
luafile ~/.config/nvim/lua/lsp/lsp-clangd.lua
luafile ~/.config/nvim/lua/lsp/lsp-vim.lua
luafile ~/.config/nvim/lua/lsp/lsp-python.lua
luafile ~/.config/nvim/lua/lsp/lsp-bash.lua
luafile ~/.config/nvim/lua/lsp/lsp-lua.lua

nnoremap <silent>       gh         :ClangdSwitchSourceHeader<CR>
nnoremap <silent>       gH         :vsplit<CR>:ClangdSwitchSourceHeader<CR>
nnoremap <silent>       gd         :lua vim.lsp.buf.definition()<CR>
nnoremap <silent>       gD         :lua vim.lsp.buf.declaration()<CR>
nnoremap <silent>       gi         :lua vim.lsp.buf.implementation()<CR>
nnoremap <silent>       gr         :lua vim.lsp.buf.references()<CR>
nnoremap <silent>       <Leader>k  :lua vim.lsp.buf.hover()<CR>
nnoremap <silent>       <Leader>D  :lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent>       <Leader>rn :lua vim.lsp.buf.rename()<CR>
nnoremap <silent>       <Leader>e  :lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <silent>       <Leader>p  :lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent>       <Leader>n  :lua vim.lsp.diagnostic.goto_next()<CR>

" Autoformat
autocmd BufWritePre *.c,*.cpp,*.h lua vim.lsp.buf.formatting_sync(nil, 1000)

highlight! link mkdLineBreak NONE
