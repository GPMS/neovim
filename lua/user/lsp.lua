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

local signature_status_ok, signature = pcall(require, 'lsp_signature')
if not signature_status_ok then
    return
end

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
    maplocal(0, 'n', '<Leader>e', ":lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", options)
    maplocal(0, 'n', '<Leader>p', ":lua vim.lsp.diagnostic.goto_prev()<CR>", options)
    maplocal(0, 'n', '<Leader>n', ":lua vim.lsp.diagnostic.goto_next()<CR>", options)
end

local servers = {
    'clangd',
    'bashls',
    'pyright',
    'vimls',
    'tsserver'
}
for _, lsp in ipairs(servers) do
    config[lsp].setup {
        on_attach = on_attach
    }
end

USER = vim.fn.expand('$USER')

local sumneko_root_path = ""
local sumneko_binary = ""

if vim.fn.has("mac") == 1 then
    sumneko_root_path = "/Users/" .. USER .. "/.config/nvim/lua-language-server"
    sumneko_binary = "/Users/" .. USER .. "/.config/nvim/lua-language-server/bin/macOS/lua-language-server"
elseif vim.fn.has("unix") == 1 then
    sumneko_root_path = "/home/" .. USER .. "/.config/nvim/lua-language-server"
    sumneko_binary = "/home/" .. USER .. "/.config/nvim/lua-language-server/bin/Linux/lua-language-server"
else
    print("Unsupported system for sumneko")
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
