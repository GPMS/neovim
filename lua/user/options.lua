vim.opt.shortmess:append "c"
vim.opt.clipboard:append "unnamedplus"

local options = {
    -- Misc
    showmode = false,
    hidden = true,
    timeoutlen = 500,
    signcolumn = "yes",
    scrolloff = 8,
    mouse = "a",
    lazyredraw = false,
    cursorline = true,
    colorcolumn = "121",
    number = true,
    relativenumber = true,
    wrap = false,
    termguicolors = true,

    -- Tabbing
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    smartindent = true,

    -- Searching
    hlsearch = false,
    ignorecase = true,
    smartcase = true,

    -- Folding
    foldenable = true,
    foldmethod = "syntax",
    foldnestmax = 3,
    foldlevel = 3,

    -- Backup
    swapfile = false,
    backup = false,
    writebackup = false,
    undodir = vim.fn.stdpath('config') .. '/undo-dir',
    undofile = true,

    -- Splits
    splitright = true,
    splitbelow = true,
}

for key, value in pairs(options )do
    vim.opt[key] = value
end

local disabledBuiltIns = {
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "gzip",
  "zip",
  "zipPlugin",
  "tar",
  "tarPlugin",
  "getscript",
  "getscriptPlugin",
  "vimball",
  "vimballPlugin",
  "2html_plugin",
  "logipat",
  "rrhelper",
  "spellfile_plugin",
  "matchit",
}

for _, plugin in pairs(disabledBuiltIns) do
  vim.g["loaded_" .. plugin] = 1
end
