return {
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		dependencies = { 'nvim-lua/plenary.nvim', "folke/todo-comments.nvim" },
		config = function()
			local telescope = require("telescope")
			local builtin = require("telescope.builtin")
			telescope.setup({
				defaults = {
					path_display = {"smart"}
				}
			})
			vim.keymap.set('n', '<C-o>', builtin.find_files, {})
			vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find files in directory" })
			vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Find string in directory" })
			vim.keymap.set('n', '<leader>fs', builtin.live_grep, { desc = "Find string in directory" })
			vim.keymap.set('n', '<leader>fr', "<cmd>Telescope oldfiles<cr>", { desc = "Find recent files" })
			vim.keymap.set('n', '<leader>fc', "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor" })
			vim.keymap.set('n', '<leader>ft', "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
			vim.keymap.set('n', '<leader>fb', "<cmd>Telescope buffers<cr>", { desc = "find buffer"})
		end
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
			  extensions = {
			    ["ui-select"] = {
			      require("telescope.themes").get_dropdown {
			      }
			    }
			  }
			})
			require("telescope").load_extension("ui-select")

		end
	}
}
