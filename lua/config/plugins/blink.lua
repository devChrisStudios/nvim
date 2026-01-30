
return {
  "saghen/blink.cmp",
  version = "1.*",
  opts = {
    keymap = {
      preset = "none",
      ["<Tab>"] = {
        function(cmp)
          if cmp.is_menu_visible() then
            -- This is the magic: it tells it to select and insert immediately
            return cmp.select_next()
          else
            return cmp.show()
          end
        end,
        "fallback",
      },
      ["<S-Tab>"] = { "select_prev", "fallback" },
    },
    completion = {
      list = {
        selection = { 
          preselect = false, -- We set this to false so the first Tab grabs index 1
          auto_insert = true -- This makes the text appear as you cycle
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
