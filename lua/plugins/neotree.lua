return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    {
      "<leader>fE",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = vim.fn.expand("%:p:h") })
      end,
      desc = "Explorer NeoTree (cwd)",
    },
  },
  opts = {
    filesystem = {
      group_empty_dirs = true,
      filtered_items = {
        never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
          ".DS_Store",
        },
      },
    },
  },
}
