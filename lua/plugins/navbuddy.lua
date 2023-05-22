return {
  "SmiteshP/nvim-navbuddy",
  dependencies = {
    "neovim/nvim-lspconfig",
    "SmiteshP/nvim-navic",
    "MunifTanjim/nui.nvim",
    "nvim-telescope/telescope.nvim", -- Optional
  },
  keys = {
    { "gl", "<cmd>Navbuddy<CR>", desc = "Navbuddy" },
  },
}
