return {
	"ellisonleao/gruvbox.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		overrides = {
			NoiceCmdlinePopupBorderCmdline = { bg = "#282828" },
			NoiceCmdlinePopupBorderHelp = { bg = "#282828" },
			NoiceCmdlinePopupBorderLua = { bg = "#282828" },
			NoiceCmdlinePopupBorderSearch = { bg = "#282828" },
			NoiceCmdlineIconCmdline = { bg = "#282828" },
			NoiceCmdlineIconHelp = { bg = "#282828" },
			NoiceCmdlineIconLua = { bg = "#282828" },
			NoiceCmdlineIconSearch = { bg = "#282828" },
		},
	},
	config = function(_, opts)
		require("gruvbox").setup(opts)
		vim.cmd.colorscheme("gruvbox")
	end,
}
