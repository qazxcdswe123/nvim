return {
  "stevearc/overseer.nvim",
  config = true,
  cmd = { "OverseerRun", "OverseerToggle" },
  keys = {
    { "<leader>co", "<cmd>OverseerRun<CR>", desc = "overseer open" },
    { "<leader>cO", "<cmd>OverseerToggle<CR>", desc = "overseer toggle" },
  },
}
