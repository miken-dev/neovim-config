return {
	"vim-test/vim-test",
	dependencies = {
		"preservim/vimux",
	},
	vim.keymap.set("n", "<leader>rt", ":TestNearest<CR>", { desc = "Test Nearest" }),
	vim.keymap.set("n", "<leader>rf", ":TestFile<CR>", { desc = "Test File" }),
	vim.keymap.set("n", "<leader>rs", ":TestSuite<CR>", { desc = "Run Test Suite" }),
	vim.keymap.set("n", "<leader>rl", ":TestLast<CR>", { desc = "Test Last" }),
	vim.keymap.set("n", "<leader>rv", ":TestVisit<CR>", { desc = "Test Visit" }),

	vim.cmd("let test#strategy = 'vimux'")
}
