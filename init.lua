vim.cmd[[
    source ~/.config/nvim/viml/autocmd.vim
    source ~/.config/nvim/viml/mappings.vim
]]

require('user.plugins')

local impatient = require('impatient')
impatient.enable_profile()

require('user.material')
require('user.options')

require('user.lsp')
require('user.nvim-cmp')

require('user.galaxyline')
require('user.indentline')
require('user.nvim-tree')
require('user.ultisnips')
require('user.nvim-toggleterm')
require('user.telescope')
require('user.treesitter')
require('user.gitsigns')
require('user.lazygit')
