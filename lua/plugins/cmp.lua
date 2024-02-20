return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        { "hrsh7th/cmp-nvim-lsp" },
        { "L3MON4D3/LuaSnip" },
        { "rafamadriz/friendly-snippets" },
        { "hrsh7th/cmp-buffer" },
        { "hrsh7th/cmp-path" },
        { "hrsh7th/cmp-cmdline" },
        { "saadparwaiz1/cmp_luasnip" },
    },
    -- config = function()
    --     local cmp = require("cmp")
    --     cmp.setup.cmdline(":", {
    --         mapping = cmp.mapping.preset.cmdline(),
    --         sources = cmp.config.sources({
    --             { name = "path" },
    --         }, {
    --             {
    --                 name = "cmdline",
    --                 option = {
    --                     ignore_cmds = { "Man", "!" },
    --                 },
    --             },
    --         }),
    --     })
    -- end,
}
