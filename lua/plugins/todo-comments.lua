return {
	"folke/todo-comments.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local todo_comments = require("todo-comments")

		vim.keymap.set("n", "<leader>jt", function()
			todo_comments.jump_next()
		end, { desc = "Next todo comment" })

		vim.keymap.set("n", "<leader>jr", function()
			todo_comments.jump_next()
		end, { desc = "Previous todo comment" })
	end,
}
