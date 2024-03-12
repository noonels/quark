vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("n", "<leader>pv", "<CMD>:Lexplore<CR>")

-- quickly insert the Go mantra
vim.keymap.set("n", "<leader>ie", "oif err != nil {<CR>}<Esc>Oreturn nil, err<Esc>")
