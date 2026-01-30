
return {
  "neovim/nvim-lspconfig",
  dependencies = { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim" },
  config = function()
	  vim.lsp.enable('pyright', 'ruff', 'copilot', 'lua-ls')
  end
}

