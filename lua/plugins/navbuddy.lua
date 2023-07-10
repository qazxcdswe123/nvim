return {
  "SmiteshP/nvim-navbuddy",
  dependencies = {
    "neovim/nvim-lspconfig",
    "SmiteshP/nvim-navic",
    "MunifTanjim/nui.nvim",
    "nvim-telescope/telescope.nvim", -- Optional
  },
  opts = { lsp = { auto_attach = true } },
  keys = {
    { "gl", "<cmd>Navbuddy<CR>", desc = "Navbuddy" },
  },
}
