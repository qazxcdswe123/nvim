return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			plugins = { spelling = true },
			key_labels = {
				["<leader>"] = "SPC",
			},
		},
		config = function(_, opts)
			local wk = require("which-key")
			wk.setup(opts)
			local keymaps = {
				mode = { "n", "v" },
				["g"] = { name = "+goto" },
				["gz"] = { name = "+surround" },
				["]"] = { name = "+next" },
				["["] = { name = "+prev" },
				["<leader><tab>"] = { name = "+tabs" },
				["<leader>b"] = { name = "+buffer" },
				["<leader>c"] = { name = "+code" },
				["<leader>f"] = { name = "+file/find" },
				["<leader>g"] = { name = "+git" },
				["<leader>gh"] = { name = "+hunks" },
				["<leader>q"] = { name = "+quit/session" },
				["<leader>s"] = {
					name = "+search",
					h = {
						function()
							require("utils.cht").cht()
						end,
						"Cheatsheets (help)",
					},
					s = {
						function()
							require("utils.cht").stack_overflow()
						end,
						"Stack Overflow",
					},
				},
				["<leader>u"] = { name = "+ui" },
				["<leader>w"] = { name = "+windows" },
				["<leader>x"] = { name = "+diagnostics/quickfix" },
			}
			-- if Util.has("noice.nvim") then
			-- 	keymaps["<leader>sn"] = { name = "+noice" }
			-- end
			wk.register(keymaps)
		end,
	},
}
