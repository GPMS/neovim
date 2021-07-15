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

