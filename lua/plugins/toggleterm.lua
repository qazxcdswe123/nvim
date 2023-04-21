return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      autochdir = true,
      shade_terminals = false,
    },
    keys = {
      { "<leader>\\", "<cmd>ToggleTerm<CR>", desc = "toggleterm" },
    },
    cmd = { "ToggleTerm", "TermExec" },
  },
}
