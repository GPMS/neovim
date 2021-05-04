luafile ~/.config/nvim/lua/lsp/init.lua
luafile ~/.config/nvim/lua/lsp/lsp-clangd.lua
luafile ~/.config/nvim/lua/lsp/lsp-vim.lua
luafile ~/.config/nvim/lua/lsp/lsp-python.lua
luafile ~/.config/nvim/lua/lsp/lsp-bash.lua
luafile ~/.config/nvim/lua/lsp/lsp-lua.lua

" Autoformat
autocmd BufWritePre *.c,*.cpp,*.h lua vim.lsp.buf.formatting_sync(nil, 1000)

highlight! link mkdLineBreak NONE
