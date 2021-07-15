require('lspconfig').ccls.setup{
    on_attach = function(client, bufnr)
        require "lsp_signature".on_attach()
    end
}

local options = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', 'gh', '<CMD>FSHere<CR>', options)
vim.api.nvim_set_keymap('n', 'gH', '<CMD>vsplit<CR><CMD>FSHere<CR>', options)
