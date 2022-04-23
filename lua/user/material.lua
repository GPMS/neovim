vim.g.material_style = 'palenight'

material.setup({
	disable = {
		borders = false,
	},
	italics = {
		comments = true,
		keywords = true,
		functions = true,
	},
})

vim.cmd[[colorscheme material]]
