vim.cmd[[
    source ~/.config/nvim/viml/autocmd.vim
    source ~/.config/nvim/viml/mappings.vim
]]

require('plugins')

require('impatient')
require'impatient'.enable_profile()

require('plugins.material')
require('settings')

require('lsp')
require('plugins.nvim-cmp')

require('plugins.galaxyline')
require('plugins.indentline')
require('plugins.nvim-tree')
require('plugins.ultisnips')
require('plugins.nvim-toggleterm')
require('plugins.telescope')
require('plugins.treesitter')
require('plugins.gitsigns')
require('plugins.galaxyline')
require('plugins.lazygit')
