local telescope = require('telescope')
local actions = require('telescope.actions')

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
                {vim.fn.stdpath('config'), max_depth = 3},
                {vim.fn.stdpath('data'), max_depth = 3},
                --{'~/Documents/projects', max_depth = 3},
            },
        }
    }
}

telescope.load_extension('project')
telescope.load_extension('fzy_native')

local options = { silent = true, noremap = true }
vim.api.nvim_set_keymap('n', '<Leader>tp', ":lua require'telescope'.extensions.project.project{}<CR>", options)
vim.api.nvim_set_keymap('n', '<Leader>tf', ":Telescope find_files<CR>", options)
vim.api.nvim_set_keymap('n', '<Leader>tb', ":Telescope buffers<CR>", options)
vim.api.nvim_set_keymap('n', '<Leader>tg', ":Telescope live_grep<CR>", options)
vim.api.nvim_set_keymap('n', '<Leader>tt', ":!ctags $(fd)<CR>:Telescope tags<CR>", options)
