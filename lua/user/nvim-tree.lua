vim.g.nvim_tree_quit_on_open = 0
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_width_allow_resize  = 1
vim.g.nvim_tree_show_icons = {
    git = 1,
    folders = 1,
    files = 1,
}
--default will show icon by default if no icon is provided
--default shows no icon by default
vim.g.nvim_tree_icons = {
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

vim.cmd[[
    highlight NvimTreeFolderName guifg=#569cdc gui=bold
    highlight NvimTreeEmptyFolderName guifg=#569cdc gui=bold
]]

local tree_cb = require'nvim-tree.config'.nvim_tree_callback

require'nvim-tree'.setup {
    open_on_tab = true,
    renderer = {
        indent_markers = {
            enable = true
        }
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

