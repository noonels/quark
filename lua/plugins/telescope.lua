return {
    { "nvim-telescope/telescope.nvim",            dependencies = "tsakirist/telescope-lazy.nvim" },
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    { "nvim-telescope/telescope-project.nvim" },
    { "thePrimeagen/git-worktree.nvim" },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = "nvim-lua/plenary.nvim",
        config = function()
            require('telescope').setup({})

            require('telescope').load_extension("fzf")
            require('telescope').load_extension("project")
            require('telescope').load_extension("git_worktree")

            local builtin = require('telescope.builtin')
            local project = require('telescope').extensions.project
            local notify = require('telescope').extensions.notify
            local worktree = require('telescope').extensions.git_worktree

            vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
            vim.keymap.set('n', '<C-p>', builtin.git_files, {})
            vim.keymap.set('n', '<leader>pws', function()
                local word = vim.fn.expand("<cword>")
                builtin.grep_string({ search = word })
            end)
            vim.keymap.set('n', '<leader>pWs', function()
                local word = vim.fn.expand("<cWORD>")
                builtin.grep_string({ search = word })
            end)
            vim.keymap.set('n', '<leader>ps', function()
                builtin.grep_string({ search = vim.fn.input("Grep > ") })
            end)
            vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
            vim.keymap.set('n', '<leader>pp', project.project, {})
            vim.keymap.set('n', '<leader>gk', builtin.keymaps, {})
            vim.keymap.set('n', '<leader>vn', notify.notify, {})
            vim.keymap.set('n', '<leader>pt', worktree.git_worktrees, {})
        end,
    },
}
