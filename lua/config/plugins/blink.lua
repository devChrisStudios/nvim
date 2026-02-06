return {
	-- Codeium
	{
		"Exafunction/codeium.nvim",
		cmd = "Codeium",
		event = "InsertEnter",
		build = ":Codeium Auth",
		opts = {
			-- We turn off virtual text so it doesn't overlap with Blink's ghost text
			virtual_text = { enabled = false },
		},
	},

	-- Blink
	{
		"saghen/blink.cmp",
		version = "1.*",
		dependencies = {
			-- This is the magic bridge that lets old cmp sources work in Blink
			"saghen/blink.compat",
		},
		opts = {
			sources = {
				-- We add "codeium" to the list of active sources
				default = { "lsp", "path", "snippets", "buffer", "codeium" },
				providers = {
					codeium = {
						name = "codeium",
						module = "blink.compat.source",
						score_offset = 100,
						async = true,
					},
				},
			},
			keymap = {
				preset = "none",
				["<C-Tab>"] = { "show", "fallback" },
				["<Tab>"] = {
					function(cmp)
						if cmp.is_menu_visible() then
							return cmp.select_next()
						end
					end,
					"fallback",
				},
				["<S-Tab>"] = { "select_prev", "fallback" },
			},
			completion = {
				list = {
					selection = { 
						preselect = false, 
						auto_insert = true 
					},
				},
				ghost_text = { enabled = true },
			},
		},
	},
}
