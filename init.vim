let g:mapleader = " "

source ~/.config/nvim/viml/plugin.vim
source ~/.config/nvim/viml/autocmd.vim
source ~/.config/nvim/viml/mappings.vim
source ~/.config/nvim/viml/debug.vim

luafile ~/.config/nvim/lua/settings.lua

luafile ~/.config/nvim/lua/lsp/init.lua
luafile ~/.config/nvim/lua/lsp/lsp-bash.lua
luafile ~/.config/nvim/lua/lsp/lsp-ccls.lua
luafile ~/.config/nvim/lua/lsp/lsp-lua.lua
luafile ~/.config/nvim/lua/lsp/lsp-python.lua
luafile ~/.config/nvim/lua/lsp/lsp-trouble.lua
luafile ~/.config/nvim/lua/lsp/lsp-vim.lua

luafile ~/.config/nvim/lua/plugins/nvcode.lua
luafile ~/.config/nvim/lua/plugins/indentline.lua
luafile ~/.config/nvim/lua/plugins/nvim-tree.lua
luafile ~/.config/nvim/lua/plugins/nvim-compe.lua
luafile ~/.config/nvim/lua/plugins/ultisnips.lua
luafile ~/.config/nvim/lua/plugins/nvim-toggleterm.lua
luafile ~/.config/nvim/lua/plugins/telescope.lua
luafile ~/.config/nvim/lua/plugins/treesitter.lua
luafile ~/.config/nvim/lua/plugins/gitsigns.lua
luafile ~/.config/nvim/lua/plugins/galaxyline.lua
luafile ~/.config/nvim/lua/plugins/lazygit.lua
