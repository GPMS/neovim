require('lspconfig').clangd.setup{
    on_attach = function(client, bufnr)
        require "lsp_signature".on_attach()
    end,
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
