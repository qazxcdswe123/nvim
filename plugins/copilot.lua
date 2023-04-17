return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "User AstroFile",
    opts = {
      suggestion = { enabled = false },
      panel = { enabled = false },
    },
  },
  {
    "zbirenbaum/copilot-cmp",
    dependencies = { "copilot.lua" },
    event = "User AstroFile",
    config = function()
      local copilot_cmp = require("copilot_cmp")
      copilot_cmp.setup()
      copilot_cmp._on_insert_enter()
    end
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      -- opts parameter is the default options table
      -- the function is lazy loaded so cmp is able to be required
      local cmp = require "cmp"
      -- modify the sources part of the options table
      opts.sources = cmp.config.sources {
        { name = "copilot",    priority = 800 }, -- add new source
        { name = "nvim_lsp", priority = 1000 },
        { name = "luasnip",  priority = 750 },
        { name = "buffer",   priority = 500 },
        { name = "path",     priority = 250 },
      }
      -- local lspkind = require("plugins.config.lspkind")
      -- local icon = require("astronvim.icons.nerd_font")

      -- return the new table to be used
      return opts
    end,
  },
}
