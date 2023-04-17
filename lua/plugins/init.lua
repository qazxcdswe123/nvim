-- Common plugins
return {
	"nvim-lua/plenary.nvim",
	{ "tpope/vim-repeat", event = "VeryLazy" },
	{
		"stevearc/dressing.nvim",
		event = "VeryLazy",
		config = true,
	},
	-- buffer remove
	{
		"echasnovski/mini.bufremove",
    -- stylua: ignore
    keys = {
      { "<leader>bc", function() require("mini.bufremove").delete(0, false) end, desc = "Delete Buffer" },
      { "<leader>bC", function() require("mini.bufremove").delete(0, true) end, desc = "Delete Buffer (Force)" },
    },
	},
}
