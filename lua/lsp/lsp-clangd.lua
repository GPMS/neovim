require('lspconfig').clangd.setup{
    on_attach = require'completion'.on_attach,
    cmd = {
        "clangd", "--background-index", "--pch-storage=memory",
        "--clang-tidy", "--header-insertion=never"
    },
    filetypes = {"c", "cpp", "objc", "objcpp"},
    init_option = {
        fallbackFlags = {
            "-std=c++17"
        }
    }
}

local options = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', 'gh', '<CMD>ClangdSwitchSourceHeader<CR>', options)
vim.api.nvim_set_keymap('n', 'gH', '<CMD>vsplit<CR><CMD>ClangdSwitchSourceHeader<CR>', options)
