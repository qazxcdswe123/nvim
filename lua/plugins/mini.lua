return {
  -- buffer remove
  {
    "echasnovski/mini.bufremove",
    -- stylua: ignore
    keys = {
      { "<leader>bx", function() require("mini.bufremove").delete(0, false) end, desc = "Delete Buffer" },
      { "<leader>bX", function() require("mini.bufremove").delete(0, true) end, desc = "Delete Buffer (Force)" },
    },
  },
}
