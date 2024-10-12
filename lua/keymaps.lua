vim.g.mapleader = " "

local keymap = vim.keymap

-- search
keymap.set("n", "<leader>sc", ":nohl<CR>", { desc = "Clear search highlights" })

-- window management
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window Horizontally" })
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits even" })
keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close split" })

-- tabs
keymap.set("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close Current Tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>to", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- Language Server
keymap.set("n", "<leader>ci", vim.lsp.buf.hover, { desc = "code info" })
keymap.set("n", "<leader>cd", vim.lsp.buf.definition, { desc = "code definitions" })
keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "code actions" })

-- none-ls
keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "format with LSP" })

-- NeoTree
keymap.set("n", "<leader>e", ":Neotree filesystem reveal left<CR>")

-- Telescope

--ColorPicker
vim.keymap.set("n", "<leader>cps", "<cmd>lua require('minty.shades').open()<cr>", {desc = "Color Picker Shades"})
vim.keymap.set("n", "<leader>cph", "<cmd>lua require('minty.huefy').open()<cr>", {desc = "Color Picker Hues"})

-- Theme Picker
vim.keymap.set("n", "<leader>cpt", "<cmd>lua require('theme-picker').open_theme_picker()<cr>", { desc = "Pick color theme"})
