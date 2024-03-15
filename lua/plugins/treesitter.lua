local M = {
	"nvim-treesitter/nvim-treesitter",
	build = function()
		require("nvim-treesitter.install").update({ with_sync = true })()
	end,
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				"c",
				"css",
				"dockerfile",
				"elixir",
				"gleam",
				"go",
				"graphql",
				"haskell",
				"hcl",
				"heex",
				"html",
				"java",
				"javascript",
				"json",
				"jsonc",
				"lua",
				"php",
				"python",
				"query",
				"ruby",
				"rust",
				"scss",
				"svelte",
				"tsx",
				"typescript",
				"vim",
				"vimdoc",
				"vue",
				"yaml",
			},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}

return { M }
