
return {
  "nvim-treesitter/nvim-treesitter",
	branch = "master",
  build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" },
  opts = {
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    indent = { enable = true },
    auto_install = true,
    ensure_installed = {
      "bash",
      "c",
      "diff",
      "html",
      "javascript",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "python",
      "query",
      "regex",
      "tsx",
      "typescript",
      "vim",
      "vimdoc",
      "yaml",
			"rust",
    },
  },
  config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
  end,
}
