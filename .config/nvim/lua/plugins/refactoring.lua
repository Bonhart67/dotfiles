return {
	"ThePrimeagen/refactoring.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("refactoring").setup()
		vim.keymap.set({ "n", "x" }, "<leader>ri", ":Refactor inline_var<cr>")
	end,
}

