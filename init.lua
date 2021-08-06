vim.g.mapleader = " "

vim.cmd("source ~/.config/nvim/viml/plugin.vim")
vim.cmd("source ~/.config/nvim/viml/autocmd.vim")
vim.cmd("source ~/.config/nvim/viml/mappings.vim")
vim.cmd("source ~/.config/nvim/viml/debug.vim")

require("settings")

require("lsp")
require("lsp.bash")
require("lsp.ccls")
require("lsp.lua")
require("lsp.python")
require("lsp.trouble")
require("lsp.vim")

require("plugins.nvcode")
require("plugins.indentline")
require("plugins.nvim-tree")
require("plugins.nvim-compe")
require("plugins.ultisnips")
require("plugins.nvim-toggleterm")
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.gitsigns")
require("plugins.galaxyline")
require("plugins.lazygit")
