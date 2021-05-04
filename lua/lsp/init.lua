vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        underline = true,
        virtual_text = true,
        signs = true,
        update_in_insert = true,
    }
)

local options = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', 'gd', '<CMD>lua vim.lsp.buf.definition()<CR>', options)
vim.api.nvim_set_keymap('n', 'gD', '<CMD>lua vim.lsp.buf.declaration()<CR>', options)
vim.api.nvim_set_keymap('n', 'gi', '<CMD>lua vim.lsp.buf.implementation()<CR>', options)
vim.api.nvim_set_keymap('n', 'gr', '<CMD>lua vim.lsp.buf.references()<CR>', options)
vim.api.nvim_set_keymap('n', '<Leader>k', '<CMD>lua vim.lsp.buf.hover()<CR>', options)
vim.api.nvim_set_keymap('n', '<Leader>d', '<CMD>lua vim.lsp.buf.type_definition()<CR>', options)
vim.api.nvim_set_keymap('n', '<Leader>rn', '<CMD>lua vim.lsp.buf.rename()<CR>', options)
vim.api.nvim_set_keymap('n', '<Leader>e', '<CMD>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', options)
vim.api.nvim_set_keymap('n', '<Leader>p', '<CMD>lua vim.lsp.diagnostic.goto_prev()<CR>', options)
vim.api.nvim_set_keymap('n', '<Leader>n', '<CMD>lua vim.lsp.diagnostic.goto_next()<CR>', options)
