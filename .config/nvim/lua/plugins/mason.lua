return {
	"williamboman/mason.nvim",
	dependencies = {
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				"prettier",
				"prettierd",
				"ktlint",
				"eslint_d",
				"google-java-format",
				"htmlbeautifier",
				"beautysh",
				"buf",
				"rustfmt",
				"yamlfix",
				"taplo",
				"shellcheck",
				"gopls",
				"delve",
			},
		},
	},
	opts = {
		ui = {
			icons = {
				package_installed = "✓",
				package_pending = "➜",
				package_uninstalled = "✗",
			},
		},
	},
}
