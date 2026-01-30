
require("config.lazy")
require("remap")
require("set")

--require('mini.snippets').setup({})
--require('mini.completion').setup({})

vim.lsp.enable('pyright', 'ruff', 'copilot', 'lua-ls')
