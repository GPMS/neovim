local material_status_ok, material = pcall(require, 'material')
if not material_status_ok then
    return
end

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
