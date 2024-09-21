return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			source_selector = {
				winbar = true,
				statusline = true,
			},
			window = {
				mappings = {
					["p"] = { "toggle_preview", config = { use_float = true, use_image_nvim = true } },
				},
			},
		})
		vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal left<CR>")
		buffers = {
			follow_current_file = {
				enabled = true,
			},
		}
	end,
}
