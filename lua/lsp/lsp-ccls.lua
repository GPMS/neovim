require('lspconfig').ccls.setup{
    on_attach = require'completion'.on_attach,
}

local options = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', 'gh', '<CMD>FSHere<CR>', options)
vim.api.nvim_set_keymap('n', 'gH', '<CMD>vsplit<CR><CMD>FSHere<CR>', options)
