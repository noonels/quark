return {
	{ "MunifTanjim/nui.nvim", lazy = true },
	{
		"folke/noice.nvim",
		enabled = false, -- let's not use this for now, I want to get used to regular commandlines again
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
		config = function()
			require("noice").setup({
				vim.keymap.set("n", "<leader>q", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss Notifications" }),
				-- add any config here
				cmdline = {
					enabled = true, -- enables the Noice cmdline UI
					view = "cmdline_popup", -- view for rendering the cmdline. Change to `cmdline` to get a classic cmdline at the bottom
					opts = {}, -- global options for the cmdline. See section on views
					---@type table<string, CmdlineFormat>
					format = {
						-- conceal: (default=true) This will hide the text in the cmdline that matches the pattern.
						-- view: (default is cmdline view)
						-- opts: any options passed to the view
						-- icon_hl_group: optional hl_group for the icon
						-- title: set to anything or empty string to hide
						cmdline = { pattern = "^:", icon = "", lang = "vim" },
						search_down = { kind = "search", pattern = "^/", icon = "🔍⌄", lang = "regex" },
						search_up = { kind = "search", pattern = "^%?", icon = "🔍^", lang = "regex" },
						bash = { pattern = "^:%s*!", icon = "$", lang = "bash" },
						lua = {
							pattern = { "^:%s*lua%s+", "^:%s*lua%s*=%s*", "^:%s*=%s*" },
							icon = "",
							lang = "lua",
						},
						help = { pattern = "^:%s*he?l?p?%s+", icon = "" },
						input = {}, -- Used by input()
						-- lua = false, -- to disable a format, set to `false`
					},
				},
				messages = {
					-- NOTE: If you enable messages, then the cmdline is enabled automatically.
					-- This is a current Neovim limitation.
					enabled = true, -- enables the Noice messages UI
					view = "notify", -- default view for messages
					view_error = "notify", -- view for errors
					view_warn = "notify", -- view for warnings
					view_history = "messages", -- view for :messages
					view_search = "virtualtext", -- view for search count messages. Set to `false` to disable
				},
				lsp = {
					-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
					override = {
						["vim.lsp.util.convert_input_to_markdown_lines"] = true,
						["vim.lsp.util.stylize_markdown"] = true,
						["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
					},
				},
				presets = {
					bottom_search = true, -- use a classic bottom cmdline for search
					command_palette = true, -- position the cmdline and popupmenu together
					long_message_to_split = true, -- long messages will be sent to a split
					inc_rename = false, -- enables an input dialog for inc-rename.nvim
					lsp_doc_border = true, -- add a border to hover docs and signature help
				},
				routes = {
					{
						view = "notify",
						filter = { event = "msg_showmode", find = "recording" },
					},
					{
						filter = {
							event = "msg_show",
							kind = "",
							find = "written",
						},
						opts = { skip = true },
					},
				},
			})
		end,
	},
}
