vim.api.nvim_exec('language en_UK', true)

local config_path = vim.fn.stdpath('config')

vim.cmd("source " .. config_path .. "/viml/mappings.vim")

require('user.autocommands')
require('user.plugins')

local impatient = require('impatient')
impatient.enable_profile()

require('user.options')

require('user.lsp')
require('user.nvim-cmp')

require('user.github-theme')
require('user.galaxyline')
require('user.indentline')
require('user.nvim-tree')
require('user.ultisnips')
require('user.nvim-toggleterm')
require('user.telescope')
require('user.treesitter')
require('user.gitsigns')
require('user.lazygit')
