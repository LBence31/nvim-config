vim.g.have_nerd_font = true

vim.o.number = true
vim.o.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.o.showmode = false

vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.undofile = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.signcolumn = "yes"

vim.o.updatetime = 50

vim.o.timeoutlen = 500

vim.o.splitright = false
vim.o.splitbelow = false

vim.o.inccommand = "split"

vim.o.cursorline = true

vim.o.scrolloff = 8

vim.opt.isfname:append("@-@")

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})
