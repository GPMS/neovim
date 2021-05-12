require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "c", "cpp", "lua" , "python", "bash", "json", "html"
    },
    highlight = {
        enable = true,
    },
}
