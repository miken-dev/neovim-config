return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
		"leoluz/nvim-dap-go",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")

		require("dapui").setup()
		require("dap-go").setup()

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end
		vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint, { desc = "Toggle breakpoing" })
		vim.keymap.set("n", "<Leader>ds", dap.continue, { desc = "Start debugger" })
		vim.keymap.set("n", "<Leader>do", function()
			require("dap").step_over()
		end, { desc = "Step over" })
		vim.keymap.set("n", "<Leader>di", function()
			require("dap").step_into()
		end, { desc = "Step Into" })
		vim.keymap.set("n", "<Leader>du", function()
			require("dap").step_out()
		end, { desc = "Step out" })
	end,
}
