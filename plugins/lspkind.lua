return {
  "onsails/lspkind.nvim",
  opts = function(_, opts)
    -- set some missing symbol types
    opts.symbol_map = {
      Copilot = "",
    }
  return opts
  end,
}
