require('lspconfig').ccls.setup{
    on_attach = function(client, bufnr)
        require "lsp_signature".on_attach()
    end
}
