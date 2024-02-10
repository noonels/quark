vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pd", "<CMD>:Lexplore<CR>")

-- quickly insert the Go mantra
vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

vim.keymap.set("i", "<C-c>", "<Esc>")
