return {
    {
        'navarasu/onedark.nvim',
        config = function()
            require('onedark').setup {
                -- Main options --
                style = 'dark', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
                ending_tildes = true,

                -- Change code style ---
                -- Options are italic, bold, underline, none
                -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
                code_style = {
                    comments = 'italic',
                    keywords = 'none',
                    functions = 'none',
                    strings = 'none',
                    variables = 'none'
                },

                -- Lualine options --
                lualine = {
                    transparent = false, -- lualine center bar transparency
                },

                -- Custom Highlights --
                diagnostics = {
                    darker = true,     -- darker colors for diagnostic
                    undercurl = true,  -- use undercurl instead of underline for diagnostics
                    background = true, -- use background color for virtual text
                },
            }
            require('onedark').load()
        end
    },
}
