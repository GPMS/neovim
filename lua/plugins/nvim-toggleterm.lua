require("toggleterm").setup{
    size = 12
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
