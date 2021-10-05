vim.g.mapleader = ' '

vim.cmd[[
    source ~/.config/nvim/viml/autocmd.vim
    source ~/.config/nvim/viml/mappings.vim
    source ~/.config/nvim/viml/debug.vim
]]

require('plugins')

require('impatient')
require'impatient'.enable_profile()

require('plugins.material')
require('settings')

require('lsp')

require('plugins.galaxyline')
require('plugins.indentline')
require('plugins.nvim-tree')
require('plugins.nvim-compe')
require('plugins.ultisnips')
require('plugins.nvim-toggleterm')
require('plugins.telescope')
require('plugins.treesitter')
require('plugins.gitsigns')
require('plugins.galaxyline')
require('plugins.lazygit')
