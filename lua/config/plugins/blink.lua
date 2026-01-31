return {
  "saghen/blink.cmp",
  version = "1.*",
  dependencies = {
    "giuxtaposition/blink-cmp-copilot",
    {
      "zbirenbaum/copilot.lua",
      cmd = "Copilot",
      event = "InsertEnter",
      config = function()
        require("copilot").setup({})
      end,
    },
  },
  opts = {
    sources = {
      default = { "lsp", "path", "snippets", "buffer", "copilot" },
      providers = {
        copilot = {
          name = "copilot",
          module = "blink-cmp-copilot",
          score_offset = 100,
          async = true,
        },
      },
    },
    keymap = {
      preset = "none",
      -- This opens the menu without indenting
      ["<C-Tab>"] = { "show", "fallback" },
      
      -- This is the smart Tab logic
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
        } 
      },
      menu = {
        border = "single",
        winhighlight = "Normal:None,FloatBorder:DiagnosticError,CursorLine:Visual,Search:None",
      },
      ghost_text = { enabled = true },
    },
  },
}
