vim.g.nvim_tree_side = 'left'
vim.g.nvim_tree_width = 40
vim.g.nvim_tree_ignore = { '.git', 'node_modules', '.cache' }
vim.g.nvim_tree_auto_open = 0
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_quit_on_open = 0
vim.g.nvim_tree_follow = 1
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_hide_dotfiles = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_width_allow_resize  = 1
vim.g.nvim_tree_disable_netrw = 0
vim.g.nvim_tree_hijack_netrw = 0
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

vim.cmd('highlight NvimTreeFolderName guifg=#569cdc gui=bold')
vim.cmd('highlight NvimTreeEmptyFolderName guifg=#569cdc gui=bold')

vim.cmd('nnoremap <silent> <F1> <cmd>NvimTreeToggle<CR>')

local tree_cb = require'nvim-tree.config'.nvim_tree_callback
vim.g.nvim_tree_bindings = {
	-- mappings
    {key = "<C-]>",          cb = tree_cb("cd")},
    {key = "-",              cb = tree_cb("dir_up")},
    {key = "l",              cb = tree_cb("edit")},
    {key = "h",              cb = tree_cb("close_node")},
    {key = "v",              cb = tree_cb("vsplit")},
    {key = "s",              cb = tree_cb("split")},
    {key = "t",              cb = tree_cb("tabnew")},
    {key = ".",              cb = tree_cb("toggle_dotfiles")},
    {key = "R",              cb = tree_cb("refresh")},
    {key = "a",              cb = tree_cb("create")},
    {key = "D",              cb = tree_cb("remove")},
    {key = "r",              cb = tree_cb("rename")},
    {key = "<C-r>",          cb = tree_cb("full_rename")},
    {key = "d",              cb = tree_cb("cut")},
    {key = "y",              cb = tree_cb("copy")},
    {key = "p",              cb = tree_cb("paste")},
    {key = "q",              cb = tree_cb("close")},
}

