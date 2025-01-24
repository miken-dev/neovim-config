return {
	{
		"nvchad/volt",
		lazy = true,
	},
	{
		"nvchad/minty",
		lazy = true,

		config = function()
			vim.keymap.set("n", "<leader>cp","<cmd>lua require('minty.shades').open()<cr>" , { desc = "Open Shades" })
 			vim.keymap.set("n", "<leader>cps", ":lua require('minty.huefy').open()")

		end,
	},
}
