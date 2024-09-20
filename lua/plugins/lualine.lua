return {
	"nvim-lualine/lualine.nvim",
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function() 
		require('lualine').setup({
			options = {
				theme = 'dracula'
			},
			sections = {
			    lualine_a = {'mode'},
				lualine_b = {'branch', 'diff', 'diagnostics'},
				lualine_c = {{'filename', path = 1}},
				lualine_x = {},
				lualine_y = {'mason'},
			    lualine_z = {'location'}
			},
			winbar = {
				lualine_a = {'mode'},
				lualine_b = {'tabs'},
				lualine_c = {{'filename', path = 1}},
				lualine_x = {'progress', 'location'},
				lualine_y = {'encoding', 'fileformat', 'filetype'},
				lualine_z = {'branch', 'diff', 'diagnostics'}
			}

		})
	end
}
