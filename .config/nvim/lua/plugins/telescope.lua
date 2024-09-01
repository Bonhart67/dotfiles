return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
		},
		keys = {
			{ "<leader>ff", ":Telescope find_files<cr>" },
			{ "<leader>fh", ":Telescope help_tags<cr>" },
			{ "<leader>fg", ":Telescope live_grep<cr>" },
			{ "<leader>fb", ":Telescope buffers<cr>" },
			{ "<leader><leader>", ":Telescope oldfiles<cr>" },
		},
		opts = {
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown({}),
				},
			},
			defaults = {
				mappings = {
					i = {
						["<esc>"] = require("telescope.actions").close,
						["<C-j>"] = require("telescope.actions").move_selection_next,
						["<C-k>"] = require("telescope.actions").move_selection_previous,
					},
				},
			},
		},
		config = function(_, opts)
			require("telescope").setup(opts)
			require("telescope").load_extension("ui-select")
		end,
	},
}
