local opt = vim.opt

opt.shortmess:append "c"
opt.showmode = false
opt.hidden = true
opt.timeoutlen = 500
opt.signcolumn = "yes"
opt.scrolloff = 8
opt.mouse = "a"
opt.lazyredraw = false
opt.cursorline = true
opt.clipboard:append "unnamedplus"
opt.number = true
opt.relativenumber = true
opt.wrap = false
opt.termguicolors = true
-- Tabbing
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
-- Searching
opt.hlsearch = false
opt.ignorecase = true
opt.smartcase = true
-- Folding
opt.foldmethod = "syntax"
opt.foldnestmax = 3
opt.foldlevel = 3
opt.foldenable = true
-- Backup
opt.swapfile = false
opt.backup = false
opt.writebackup = false
opt.undodir = os.getenv("HOME") .. "/.config/nvim/undo-dir"
opt.undofile = true
-- Splits
opt.splitright = true
opt.splitbelow = true

-- Code width limit
opt.colorcolumn = "121"
vim.cmd("highlight ColorColumn ctermbg=0 guibg=#131521")
vim.cmd("highlight CursorLine ctermbg=0 guibg=#131521")

local disabled_built_ins = {
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

for _, plugin in pairs(disabled_built_ins) do
  vim.g["loaded_" .. plugin] = 1
end

vim.cmd("colorscheme tokyonight")
