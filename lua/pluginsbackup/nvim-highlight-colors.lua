return {
	"brenoprata10/nvim-highlight-colors",
	config = function()
		require("nvim-highlight-colors").setup({
			render = "virtual",
			virtual_symbol = "■",
			enable_tailwind = true,
		})
		require("cmp").setup({
			formatting = {
				format = require("nvim-highlight-colors").format,
			},
		})
	end,
}
