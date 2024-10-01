return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
		vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
		vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
		vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint" })

		require("neo-tree").setup({
			popup_border_style = "rounded",
			enable_git_status = true,
			enable_diagnostics = true,
			sort_case_insensitive = true,
			git_status = {
				symbols = {
					-- Change type
					added = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
					modified = "", -- or "", but this is redundant info if you use git_status_colors on the name
					deleted = "✖", -- this can only be used in the git_status source
					renamed = "󰁕", -- this can only be used in the git_status source
					-- Status type
					untracked = "",
					ignored = "",
					unstaged = "󰄱",
					staged = "",
					conflict = "",
				},
			},

			source_selector = {
				winbar = true,
				statusline = true,
			},
			window = {
				mappings = {
					["p"] = { "toggle_preview", config = { use_float = true, use_image_nvim = true } },
				},
			},
			filesystem = {
				hide_dotfiles = false,
				hide_gitignorded = false,
				hide_hidden = false,
			},
		})
		vim.keymap.set("n", "<leader>ee", ":Neotree filesystem reveal left<CR>")
		vim.keymap.set("n", "<leader>et", ":Neotree filesystem toggle left<CR>")
		buffers = {
			follow_current_file = {
				enabled = true,
			},
		}
	end,
}
