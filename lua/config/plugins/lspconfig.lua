
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
				require("mason-lspconfig").setup({
					ensure_installed = { "html", "cssls", "rust_analyzer" },
					automatic_installation = true,
					automatic_enable = true,
				})
  end
}

