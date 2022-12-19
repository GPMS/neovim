vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        underline = true,
        virtual_text = false,
        signs = true,
        update_in_insert = true,
    }
)

require("user.trouble")

local config_status_ok, config = pcall(require, 'lspconfig')
if not config_status_ok then
    return
end

local installer_status_ok, installer = pcall(require, 'nvim-lsp-installer')
if not installer_status_ok then
    return
end

local signature_status_ok, signature = pcall(require, 'lsp_signature')
if not signature_status_ok then
    return
end

local servers = {
    'bashls',
    'clangd',
    'html',
    'cssls',
    'pyright',
    'sumneko_lua',
    'tsserver',
    'vimls'
}

installer.setup({
    ensure_installed = servers,
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})

local on_attach = function()
    signature.on_attach()

    local options = { silent = true, noremap = true }
    local maplocal = vim.api.nvim_buf_set_keymap
    maplocal(0, 'n', 'gd', ":lua vim.lsp.buf.definition()<CR>", options)
    maplocal(0, 'n', 'gD', ":lua vim.lsp.buf.declaration()<CR>", options)
    maplocal(0, 'n', 'gi', ":lua vim.lsp.buf.implementation()<CR>", options)
    maplocal(0, 'n', 'gr', ":lua vim.lsp.buf.references()<CR>", options)
    maplocal(0, 'n', '<Leader>k', ":lua vim.lsp.buf.hover()<CR>", options)
    maplocal(0, 'n', '<Leader>d', ":lua vim.lsp.buf.type_definition()<CR>", options)
    maplocal(0, 'n', '<Leader>rn', ":lua vim.lsp.buf.rename()<CR>", options)
    maplocal(0, 'n', '<Leader>f', ":lua vim.lsp.buf.formatting()<CR>", options)
    maplocal(0, 'n', '<Leader>e', ":lua vim.diagnostic.open_float()<CR>", options)
    maplocal(0, 'n', '<Leader>p', ":lua vim.diagnostic.goto_prev()<CR>", options)
    maplocal(0, 'n', '<Leader>n', ":lua vim.diagnostic.goto_next()<CR>", options)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

for _, lsp in ipairs(servers) do
    config[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities
    }
end

USER = vim.fn.expand('$USER')

local sumneko_root_path = vim.fn.stdpath('data') .. '/lsp_servers/sumneko_lua/extension/server'

local sumneko_binary = sumneko_root_path .. "/bin/"
-- POSIX (Linux, Unix, Mac)
if vim.fn.has("mac") == 1 or vim.fn.has("unix") == 1 then
    sumneko_binary = sumneko_binary .. "lua-language-server"
-- Windows
else
    sumneko_binary = sumneko_binary .. 'lua-language-server.exe'
end

require'lspconfig'.sumneko_lua.setup {
    on_attach = on_attach,
    cmd = { sumneko_binary, "-E", sumneko_root_path .. "/main.lua" },
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = vim.split(package.path, ';')
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = { "vim" }
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = {
                    [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                    [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true
                }
            }
        }
    }
}
