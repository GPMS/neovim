local opt = vim.opt

opt.shortmess:append "c"
opt.showmode = false
opt.hidden = true
opt.timeoutlen = 500
opt.signcolumn = "yes"
opt.scrolloff = 999
opt.mouse = "a"
opt.lazyredraw = true
opt.cursorline = true

opt.termguicolors = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.ignorecase = true

opt.foldmethod = "syntax"
opt.foldnestmax = 3
opt.foldlevel = 3
opt.foldenable = true

opt.clipboard:append "unnamedplus"
opt.number = true
opt.relativenumber = true
opt.wrap = false

opt.smartcase = true

opt.swapfile = false
opt.backup = false
opt.writebackup = false

local isDir = function(name)
   local ok, err, code = os.rename(name, name)
   if not ok then
      if code == 13 then
         return true
      end
   end
   return ok, err
end

local undoDir = os.getenv("HOME") .. "/.config/nvim/undo-dir"
if not isDir(undoDir) then
    os.execute("mkdir " .. undoDir)
end
opt.undodir = undoDir
opt.undofile = true

opt.splitright = true
opt.splitbelow = true

vim.cmd("highlight VertSplit cterm=NONE")

opt.colorcolumn = "121"
vim.cmd("highlight ColorColumn ctermbg=0 guibg=#3c3836")

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
