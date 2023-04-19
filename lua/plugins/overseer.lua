return {
  "stevearc/overseer.nvim",
  config = true,
  cmd = { "OverseerRun", "OverseerToggle" },
  keys = {
    { "<leader>cR", "<cmd>OverseerRun<CR>", desc = "overseer run" },
    { "<leader>cT", "<cmd>OverseerToggle<CR>", desc = "overseer toggle" },
  },
}
