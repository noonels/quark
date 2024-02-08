vim.g.mapleader = " "
vim.keymap.set("n", "<leader>d", vim.cmd.Ex)

-- quickly insert the Go mantra
vim.keymap.set(
    "n",
    "<leader>ige",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

vim.keymap.set("i", "<C-c>", "<Esc>")
