return {
  {
    "mfussenegger/nvim-dap",
    keys = {
      { "<F5>", "<leader>dc", desc = "Continue", remap = true },
      { "<F17>", "<leader>dt", desc = "Terminate", remap = true }, -- Shift+F5
      -- stylua: ignore
      { "<F29>", function() require("dap").restart_frame() end, desc = "Restart frame", remap = true }, -- Ctrl+F5
      { "<F9>", "<leader>db", desc = "Toggle breakpoint", remap = true },
      { "<F10>", "<leader>dO", desc = "Step over", remap = true },
      { "<F11>", "<leader>di", desc = "Step into", remap = true },
      { "<F23>", "<leader>do", desc = "Step out", remap = true }, -- shift+F11
    },
  },
}
