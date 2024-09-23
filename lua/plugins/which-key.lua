return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	config = function()
		local wk = require("which-key")
		wk.add({
			{ "<leader>g", group = "git..." },
			{ "<leader>w", group = "window/split..." },
			{ "<leader>t", group = "tabs..." },
			{ "<leader>c", group = "code..." },
			{ "<leader>d", group = "debugger..." },
			{ "<leader>f", group = "find..." },
			{ "<leader>j", group = "todo's..." },
			{ "<leader>r", group = "run tests" },
			{ "<leader>s", group = "search highlights" },
		})
	end,
	opts = {},
	keys = {
		{
			"<leader>h",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
