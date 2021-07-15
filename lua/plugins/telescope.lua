local actions = require('telescope.actions')
require('telescope').setup {
    defaults = {
        mappings = {
            i = {
                ["<ESC>"] = actions.close
            }
        }
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        },
        project = {
            base_dir = '~/Documents/Projects',
            max_depth = 3
        }
    }
}

require'telescope'.load_extension('project')

local options = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', '<Leader>tp', ':lua require\'telescope\'.extensions.project.project{}<CR>', options)
vim.api.nvim_set_keymap('n', '<Leader>tf', ':Telescope find_files<CR>', options)
vim.api.nvim_set_keymap('n', '<Leader>tb', ':Telescope buffers<CR>', options)
vim.api.nvim_set_keymap('n', '<Leader>tg', ':Telescope live_grep<CR>', options)
vim.api.nvim_set_keymap('n', '<Leader>tt', ':!ctags $(fd)<CR>:Telescope tags<CR>', options)

