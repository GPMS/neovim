require('nvim-treesitter.configs').setup {
    ensure_installed = {
        "bash",
        "c",
        "cpp",
        "css",
        "html",
        "java",
        "javascript",
        "json",
        "lua",
        "python",
        "typescript"
    },
    highlight = {
        enable = true,
    },
    autotag = {
        enable = true
    }
}

require'treesitter-context'.setup{
    max_lines = 1
}
