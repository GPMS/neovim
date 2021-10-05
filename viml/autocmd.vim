" Delete trailing whitespace
autocmd BufWritePre * %s/\s\+$//e
" Source certain vim files after saving
augroup reload_files
    autocmd!
    autocmd BufWritePost init.lua lua require("nvim-reload").Restart()
    autocmd BufWritePost mappings.vim,autocmd.vim,plugin.vim source %
augroup end
autocmd FileType make setlocal noexpandtab nowrap
autocmd BufNewFile,BufRead *.js,*.jsx,*.html,*.css,*.ts,*.tsx setlocal tabstop=2 softtabstop=2 shiftwidth=2

augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank { higroup='IncSearch', timeout=200 }
augroup end

augroup NvimTree
    autocmd!
    autocmd FileType NvimTree setlocal signcolumn=no nowrap
augroup end
