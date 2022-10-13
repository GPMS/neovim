vim.g.mapleader = " "
vim.g.maplocalleader = " "

local options = { silent = true, noremap = true }
local mapping = vim.api.nvim_set_keymap

mapping('n', '<C-s>', ':w<CR>', options)
mapping('n', '<C-q>', ':q<CR>', options)

-- Make Y behave the same as C and D
mapping('n', 'Y', 'y$', options)

-- keep cursor on the same spot when joining lines
mapping('n', 'J', "mzJ'z", options)

-- Add undo breakpoints when inserting these characters
mapping('i', ',', ',<C-g>u', options)
mapping('i', '.', '.<C-g>u', options)
mapping('i', '!', '!<C-g>u', options)
mapping('i', '?', '?<C-g>u', options)

mapping('n', 'H', '^', options)
mapping('n', 'L', '$', options)

-- Replace word under cursor
mapping('n', '<Leader>r', ':%s/\\<<C-R><C-W>\\>//gc<Left><Left><Left>', options)

-- Tab resize
mapping('n', '<Up>', ':resize +2<CR>', options)
mapping('n', '<Down>', ':resize -2<CR>', options)
mapping('n', '<Left>', ':vertical resize +2<CR>', options)
mapping('n', '<Right>', ':vertical resize -2<CR>', options)

-- Window movement
mapping('n', '<C-h>', ':wincmd h<CR>', options)
mapping('n', '<C-j>', ':wincmd j<CR>', options)
mapping('n', '<C-k>', ':wincmd k<CR>', options)
mapping('n', '<C-l>', ':wincmd l<CR>', options)

-- Tabs
mapping('n', '<TAB>', ':tabnext<CR>', options)
mapping('n', '<S-TAB>', ':tabprevious<CR>', options)

-- Move text
mapping('v', 'J', ":m '>+1<CR>gv=gv", options)
mapping('v', 'K', ":m '<-2<CR>gv=gv", options)

-- Better tabbing
mapping('v', '<', "<gv", options)
mapping('v', '>', ">gv", options)

mapping('n', 'gF', ":vsplit<CR>gf", options)

mapping('n', 'qp', ":cprev<CR>", options)
mapping('n', 'qn', ":cnext<CR>", options)

-- Switch source/header
mapping('n', 'gh', ":FSHere<CR>", options)
mapping('n', 'gH', ":vsplit<CR>:FSHere<CR>", options)

-- Toggle terminal
mapping('n', '<A-t>', ":ToggleTerm<CR>", options)
mapping('t', '<A-t>', "<C-\\><C-n>:ToggleTerm<CR>", options)

-- Terminal movement
mapping('t', '<C-k>', "<C-\\><C-n>:wincmd k<CR>", options)
mapping('t', '<C-h>', "<C-\\><C-n>:wincmd h<CR>", options)
mapping('t', '<C-l>', "<C-\\><C-n>:wincmd l<CR>", options)

local Build = function()
    local winnr = vim.fn.win_getid()
    local bufnr = vim.api.nvim_win_get_buf(winnr)
    local ft = vim.bo.filetype
    local current_file = vim.fn.expand('%')
    local command = {
        python = 'python ' .. current_file,
        lua = 'lua ' .. current_file,
        c = './build.sh'
    }
    vim.api.nvim_buf_set_option(bufnr, 'makeprg', command[ft])
    vim.api.nvim_command("make")
    vim.api.nvim_command("vert copen")
    vim.api.nvim_command("wincmd =")
end

local Run = function()
    local ft = vim.bo.filetype
    local current_file = vim.fn.expand('%')
    local command = {
        python = 'python.exe ' .. current_file,
        lua = 'lua ' .. current_file,
        c = './run.sh'
    }
    print(command[ft])
    vim.api.nvim_command('TermExec cmd="' .. command[ft] .. '"')
end

vim.keymap.set('n', '<F3>', Build, options)
vim.keymap.set('n', '<F4>', Run, options)
vim.keymap.set('t', '<F3>', Build, options)
vim.keymap.set('t', '<F4>', Run, options)
