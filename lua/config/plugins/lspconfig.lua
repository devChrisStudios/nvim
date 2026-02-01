
return {
  "neovim/nvim-lspconfig",
  dependencies = { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim" },
  config = function()
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.textDocument.completion.completionItem.snippetSupport = true 

      vim.lsp.config('html', {
          capabilities = capabilities,
      }, 'cssls', {
          capabilities = capabilities,
      }, 'rust_analyzer', {
          settings = {
                ["rust-analyzer"] = {
                    diagnostics = {
                        enable = true,
                    },
                },
            },
        })
        vim.lsp.enable('pyright', 'ruff', 'copilot', 'lua-ls', 'ts_ls', 'html', 'cssls', 'rust_analyzer')
  end
}

