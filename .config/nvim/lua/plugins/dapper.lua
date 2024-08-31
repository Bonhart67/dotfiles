return {
	"mfussenegger/nvim-dap",
	dependencies = {
		{
			"rcarriga/nvim-dap-ui",
			"nvim-neotest/nvim-nio",
			config = function(_, opts)
				local dap = require("dap")
				local dapui = require("dapui")
				dap.set_log_level("INFO")
				dapui.setup(opts)
				dap.listeners.after.event_initialized["dapui_config"] = function()
					dapui.open({})
				end
				dap.listeners.before.event_terminated["dapui_config"] = function()
					dapui.close({})
				end
				dap.listeners.before.event_exited["dapui_config"] = function()
					dapui.close({})
				end
			end,
		},
		{
			"leoluz/nvim-dap-go",
			config = function()
				require("dap-go").setup()
				vim.keymap.set('n', '<leader>dt', ':lua require("dap-go").debug_test()<cr>', { silent = true })
			end,
		},
		{
			"theHamsta/nvim-dap-virtual-text",
			opts = {},
		},
		{
			"jay-babu/mason-nvim-dap.nvim",
			dependencies = "mason.nvim",
			cmd = { "DapInstall", "DapUninstall" },
			opts = {
				automatic_installation = true,
				handlers = {},
				ensure_installed = {
					"delve",
				},
			},
		},
		{ "jbyuki/one-small-step-for-vimkind", module = "osv" },
	},
	config = function()
		vim.keymap.set("n", "<leader>db", ':lua require("dap").toggle_breakpoint()<cr>', { silent = true })
		vim.keymap.set('n', '<leader>dc', ':lua require("dap").continue()<cr>', { silent = true })
		vim.keymap.set('n', '<leader>ds', ':lua require("dap").step_over()<cr>', { silent = true })
		vim.keymap.set('n', '<leader>di', ':lua require("dap").step_into()<cr>', { silent = true })
	end,
}
