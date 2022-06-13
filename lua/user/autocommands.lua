-- Reload lua files
vim.api.nvim_create_autocmd({'BufWritePost'}, {
    pattern = {'init.lua'},
    callback = function ()
        require('nvim-reload').Restart()
    end,
})

vim.api.nvim_create_autocmd({'BufWritePost'}, {
    pattern = {'plugins.lua'},
    callback = function ()
        vim.cmd[[PackerSync]]
    end,
})

vim.api.nvim_create_autocmd({'BufWritePre'}, {
    callback = function ()
        vim.cmd[[%s/\s\+$//e]]
    end,
})

-- Reload vim files
vim.api.nvim_create_autocmd({'BufWritePost'}, {
    pattern = {'mappings.vim'},
    callback = function ()
        vim.cmd('source %')
    end,
})

-- Highlight yank
vim.api.nvim_create_autocmd({'TextYankPost'}, {
    callback = function ()
        vim.highlight.on_yank{higroup='IncSearch', timeout=200}
    end,
})
