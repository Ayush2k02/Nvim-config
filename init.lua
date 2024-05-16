local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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
vim.o.number = true
function ReplaceWordUnderCursor()
	-- Get the word under the cursor
	local word = vim.fn.expand("<cword>")
	-- Prompt the user for the replacement word
	local newWord = vim.fn.input("Replace with: ")
	-- Escape special characters in the word to be safe for pattern matching
	word = vim.fn.escape(word, "\\/.$^~[]")
	-- Perform the substitution
	local command = string.format("%%s/\\<%s\\>/%s/g", word, newWord)
	vim.cmd(command)
end

vim.api.nvim_set_keymap("n", "<leader>rw", "<cmd>lua ReplaceWordUnderCursor()<CR>", { noremap = true, silent = true })
require("vim-options")
require("lazy").setup("plugins")

