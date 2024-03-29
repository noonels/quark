vim.opt.guicursor = ""

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = { 81, 101, 121 }
vim.opt.cursorline = true

vim.opt.listchars = {
	tab = "» ",
	trail = "·",
	extends = "→",
	precedes = "←",
	nbsp = "␣",
}

vim.opt.list = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmode = false

vim.opt.guicursor = "n-v-c:block-Cursor/lCursor-blinkon0,i-ci-ve:ver25-Cursor/lCursor-blinkon0"
