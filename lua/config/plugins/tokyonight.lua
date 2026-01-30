
return {
	{
		"folke/tokyonight.nvim",
		lazy = false, -- Load the colorscheme during startup
		priority = 1000, -- Make sure to load this before all the other start plugins
		opts = {
			style = "night",
			transparent = true,
		},
		config = function(_, opts)
			require("tokyonight").setup(opts)
			vim.cmd.colorscheme("tokyonight-night")
		end,
	},
}

