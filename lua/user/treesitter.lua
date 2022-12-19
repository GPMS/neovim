local treesitter_status_ok, treesitter = pcall(require, 'nvim-treesitter.configs')
if not treesitter_status_ok then
    return
end

treesitter.setup {
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
