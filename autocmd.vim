" Delete trailing whitespace
autocmd BufWritePre * %s/\s\+$//e
" Source certain vim files after saving
autocmd! BufWritePost init.vim source %
autocmd! BufWritePost plugin.vim source %

augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank { higroup='IncSearch', timeout=200 }
augroup end
