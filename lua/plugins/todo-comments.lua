return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		keywords = {
			-- FIXME:
			-- todo:
			-- perf:
			-- note:
			FIX = {
				icon = "", -- icon used for the sign, and in search results
				color = "error", -- can be a hex color, or a named color (see below)
				alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
				-- signs = false, -- configure signs for some keywords individually
			},
			TODO = { icon = "", color = "warning", alt = { "todo" } },
			PERF = { icon = "", color = "hint", alt = { "perf", "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
			NOTE = { icon = "", color = "hint", alt = { "note", "INFO" } },
		},
	},
}
