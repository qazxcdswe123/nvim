return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true,
    keys = {
      {
        "<leader>sN",
        function()
          require("config.search").cht()
        end,
        desc = "SO",
      },
    },
  },
}
