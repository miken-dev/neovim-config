vim.g.mapleader = " "

local keymap = vim.keymap

-- search
keymap.set("n", "<leader>sc", ":nohl<CR>", { desc = "Clear search highlights" })


-- window management
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window Horizontally" })
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits even" })
keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close split" })
