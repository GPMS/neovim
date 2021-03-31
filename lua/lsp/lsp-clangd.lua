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
