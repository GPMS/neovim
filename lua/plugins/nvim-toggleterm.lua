require("toggleterm").setup{
    -- size can be a number or function which is passed the current terminal
    size = 12,
    open_mapping = [[<c-\>]],
    hide_numbers = true, -- hide the number column in toggleterm buffers
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = '<number>', -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
    start_in_insert = true,
    insert_mappings = true, -- whether or not the open mapping applies in insert mode
    persist_size = true,
    direction = 'horizontal',
    close_on_exit = false, -- close the terminal window when the process exits
    shell = vim.o.shell, -- change the default shell
    -- This field is only relevant if direction is set to 'float'
    float_opts = {
        -- The border key is *almost* the same as 'nvim_win_open'
        -- see :h nvim_win_open for details on borders however
        -- the 'curved' border is a custom border type
        -- not natively supported but implemented in this plugin.
        border = 'single',
        width = 1,
        height = 1,
        winblend = 3,
        highlights = {
            border = "Normal",
            background = "Normal",
        }
    }
}

local options = { noremap = true, silent = true }
--Toggle terminal
vim.api.nvim_set_keymap('n', '<A-t>', ':ToggleTerm<CR>', options)
vim.api.nvim_set_keymap('t', '<A-t>', '<C-\\><C-n>:ToggleTerm<CR>', options)
--Terminal movement
vim.api.nvim_set_keymap('t', '<C-k>', '<C-\\><C-n>:wincmd k<CR>', options)
vim.api.nvim_set_keymap('t', '<C-h>', '<C-\\><C-n>:wincmd h<CR>', options)
vim.api.nvim_set_keymap('t', '<C-l>', '<C-\\><C-n>:wincmd l<CR>', options)
--Build/Run
vim.api.nvim_set_keymap('t', '<F3>', 'clear<CR>scripts/build.bash<CR>', options)
vim.api.nvim_set_keymap('t', '<F4>', 'clear<CR>scripts/run.bash<CR>', options)
vim.api.nvim_set_keymap('n', '<F3>', ':TermExec cmd="scripts/build.bash"<CR>', options)
vim.api.nvim_set_keymap('n', '<F4>', ':TermExec cmd="scripts/run.bash"<CR>', options)
