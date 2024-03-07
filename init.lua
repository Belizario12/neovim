local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
vim.opt.swapfile = false

local opts = {}

require("vim-options")
require("lazy").setup("plugins")

vim.keymap.set("n", "<C-s>", ":wa<CR>", {})
vim.keymap.set("i", "<C-s>", "<Esc>:wa<CR>a", {})

