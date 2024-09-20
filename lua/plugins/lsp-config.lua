return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()	
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function() 
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ts_ls", "svelte", "markdown_oxide" }
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.ts_ls.setup({})
			lspconfig.svelte.setup({})
			lspconfig.markdown_oxide.setup({})
			vim.keymap.set('n', '<leader>ci', vim.lsp.buf.hover, { desc = "code info"})
			vim.keymap.set('n', '<leader>cd', vim.lsp.buf.definition, { desc = "code definitions"})
			vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "code actions" })
		end
	}
}
