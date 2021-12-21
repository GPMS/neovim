vim.g.material_style = 'palenight'

require('material').setup({
	contrast = true,
	borders = true,
	italics = {
		comments = true,
		keywords = true,
		functions = true,
	},
})

vim.cmd[[colorscheme material]]
