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

  -- autoclose pairs
  {
    "echasnovski/mini.pairs",
    opts = {
      modes = { insert = true, command = true, terminal = false },
      mappings = {
        ["'"] = { action = "closeopen", pair = "''", neigh_pattern = "[^%a&\\].", register = { cr = false } },
      },
    },
  },

  {
    "echasnovski/mini.surround",
    opts = {
      custom_surroundings = {
        ["("] = { input = { "%b()", "^.().*().$" }, output = { left = "(", right = ")" } },
        ["["] = { input = { "%b[]", "^.().*().$" }, output = { left = "[", right = "]" } },
        ["{"] = { input = { "%b{}", "^.().*().$" }, output = { left = "{", right = "}" } },
        ["<"] = { input = { "%b<>", "^.().*().$" }, output = { left = "<", right = ">" } },
      },
    },
  },
}
