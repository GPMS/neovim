local tree_cb = require'nvim-tree.config'.nvim_tree_callback
vim.g.nvim_tree_bindings = {
	-- mappings
	["<C-]>"]          = tree_cb("cd"),
	["-"]              = tree_cb("dir_up"),
	["l"]              = tree_cb("edit"),
	["h"]              = tree_cb("close_node"),
	["v"]              = tree_cb("vsplit"),
	["s"]              = tree_cb("split"),
	["t"]              = tree_cb("tabnew"),
	["."]              = tree_cb("toggle_dotfiles"),
	["R"]              = tree_cb("refresh"),
	["a"]              = tree_cb("create"),
	["d"]              = tree_cb("remove"),
	["r"]              = tree_cb("rename"),
	["<C-r>"]          = tree_cb("full_rename"),
	["x"]              = tree_cb("cut"),
	["c"]              = tree_cb("copy"),
	["p"]              = tree_cb("paste"),
	["q"]              = tree_cb("close"),
}

