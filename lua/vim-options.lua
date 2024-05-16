vim.opt.tabstop = 2    -- A tab is equal to 4 spaces
vim.opt.shiftwidth = 2 -- Number of spaces to use for each step of (auto)indent
vim.g.mapleader = " "
vim.api.nvim_set_keymap("n", "<C-t>", ":tabnew<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", ":noh<CR><C-l>", { noremap = true, silent = true })
vim.opt.wrap = false
vim.api.nvim_set_option("clipboard", "unnamed")
vim.opt.clipboard:append("unnamedplus")
vim.o.mouse = 'a'
