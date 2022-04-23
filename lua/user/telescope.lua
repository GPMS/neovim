local telescope_status_ok, telescope = pcall(require, 'telescope')
if not telescope_status_ok then
    return
end

actions = require('telescope.actions')

telescope.setup {
    defaults = {
        mappings = {
            i = {
                ["<ESC>"] = actions.close,
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
            }
        }
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        },
        project = {
            base_dirs = {
                {'~/Documents/projects', max_depth = 3}
            },
        }
    }
}

telescope.load_extension('project')
telescope.load_extension('fzy_native')
