return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			local tokyonight = require("tokyonight")
			tokyonight.setup({
				style = "day",
				transparent = true,
				styles = {
					sidebar = "transparent",
					floats = "transparent",
				},
			})
			tokyonight.load()
		end,
	},
}
