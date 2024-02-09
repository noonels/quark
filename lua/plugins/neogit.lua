return {
    "NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim",  -- required
        "sindrets/diffview.nvim", -- optional - Diff integration

        -- Only one of these is needed, not both.
        "nvim-telescope/telescope.nvim", -- optional
    },
    config = function()
        local neogit = require("neogit")
        neogit.setup({
            kind = "auto",
            diffview = {
                use_icons = true,
            },
            integrations = {
                diffview = true,
            },
        })

        vim.keymap.set('n', '<leader>gg', neogit.open, {})
    end,
}
