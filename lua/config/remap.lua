vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", "<CMD>:Lexplore<CR>")

-- quickly insert the Go mantra
vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

vim.keymap.set("i", "<C-c>", "<Esc>")
