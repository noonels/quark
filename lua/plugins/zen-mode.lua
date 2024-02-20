return {
	"folke/zen-mode.nvim",
	config = function()
		require("zen-mode").setup({
			window = {
				backdrop = 0.75, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
				width = 120, -- width of the Zen window
				height = 1, -- height of the Zen window
				options = {
					signcolumn = "no", -- disable signcolumn
					number = false, -- disable number column
					relativenumber = false, -- disable relative numbers
					cursorline = false, -- disable cursorline
					cursorcolumn = false, -- disable cursor column
					foldcolumn = "0", -- disable fold column
					colorcolumn = "0", -- disable color column
				},
			},
		})
	end,
	keys = {
		{ "<leader>z", "<cmd>ZenMode<CR>", desc = "Zen Mode" },
	},
}
