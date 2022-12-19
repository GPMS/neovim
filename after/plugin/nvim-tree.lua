vim.g.nvim_tree_width_allow_resize  = 1

vim.api.nvim_create_autocmd({'FileType'}, {
    pattern = "NvimTree",
    callback = function ()
        vim.o.signcolumn = "no"
        vim.o.wrap = false
        vim.cmd[[
            highlight NvimTreeFolderName guifg=#569cdc gui=bold
            highlight NvimTreeEmptyFolderName guifg=#569cdc gui=bold
        ]]
    end,
})

local tree_cb = require'nvim-tree.config'.nvim_tree_callback

require('nvim-tree').setup {
    open_on_tab = true,
    renderer = {
        highlight_git = true,
        indent_markers = {
            enable = true
        },
        icons = {
            glyphs = {
                default =  '',
                symlink = '',
                git = {
                    unstaged = "✗",
                    staged = "✓",
                    unmerged = "",
                    renamed = "➜",
                    untracked = "ﭖ"
                },
                folder = {
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                }
            }
        },
    },
    filters = {
        dotfiles = true,
        custom = { 'node_modules' }
    },
    view = {
        width = 30,
        mappings = {
            custom_only = true,
            list = {
                -- Basic mappings
                { key = "q",            cb = tree_cb("close") },
                { key = ".",            cb = tree_cb("toggle_dotfiles") },
                { key = "R",            cb = tree_cb("refresh") },
                -- Change working directory
                { key = "<C-]>",        cb = tree_cb("cd") },
                { key = "-",            cb = tree_cb("dir_up") },
                -- Movement
                { key = "l",            cb = tree_cb("edit") },
                { key = "h",            cb = tree_cb("close_node") },
                -- Opening
                { key = "o",            cb = tree_cb("system_open") },
                { key = "v",            cb = tree_cb("vsplit") },
                { key = "s",            cb = tree_cb("split") },
                { key = "t",            cb = tree_cb("tabnew") },
                -- Modify files
                { key = "a",            cb = tree_cb("create") },
                { key = "D",            cb = tree_cb("remove") },
                { key = "r",            cb = tree_cb("rename") },
                { key = "<C-r>",        cb = tree_cb("full_rename") },
                { key = "d",            cb = tree_cb("cut") },
                { key = "y",            cb = tree_cb("copy") },
                { key = "p",            cb = tree_cb("paste") },
            }
        }
    }
}

local options = { silent = true, noremap = true }
vim.api.nvim_set_keymap('n', '<F1>', ":NvimTreeToggle<CR>", options)
