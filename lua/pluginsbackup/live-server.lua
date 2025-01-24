return {
	"barrett-ruth/live-server.nvim",
	config = function()
		require("lazy").setup {
			build = 'pnpm add -g live-server',
			cmd = { 'LiveServerStart', 'LiveServerStop'}
		}
		require('live-server').setup()
	end
}
