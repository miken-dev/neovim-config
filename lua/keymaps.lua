vim.g.mapleader = " "

local keymap = vim.keymap

-- search
keymap.set("n", "<leader>sc", ":nohl<CR>", { desc = "Clear search highlights" })


-- window management
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window Horizontally" })
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits even" })
keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close split" })


-- Language Server
keymap.set('n', '<leader>ci', vim.lsp.buf.hover, { desc = "code info"})
keymap.set('n', '<leader>cd', vim.lsp.buf.definition, { desc = "code definitions"})
keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "code actions" })

-- none-ls
keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "format with LSP" })

-- NeoTree
keymap.set('n', '<leader>e',':Neotree filesystem reveal left<CR>')

