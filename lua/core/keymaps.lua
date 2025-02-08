vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.cmd([[
 autocmd InsertLeave * silent! update
]])

vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<Esc><cmd>update<CR>", { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<C-j>", "5j")
vim.keymap.set({ "n", "v" }, "<C-k>", "5k")
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p')
vim.keymap.set("n", "<leader>qa", ":q<CR>")
vim.keymap.set("n", "<leader>h", "^", { noremap = true })
vim.keymap.set("n", "<leader>l", "$", { noremap = true })

-- terminal on buffer
-- these doesn't work well with powershell
vim.keymap.set({ "n", "v" }, "<leader>tov", function()
	vim.cmd("vsplit term://" .. vim.o.shell)
end, { noremap = true })
vim.keymap.set({ "n", "v" }, "<leader>toh", function()
	vim.cmd("split term://" .. vim.o.shell)
end, { noremap = true })

vim.keymap.set({ "n", "v" }, "<leader>to", "<Esc><cmd>term<CR>", { noremap = true })

-- quickfix
vim.keymap.set("n", "<leader>qo", "<Esc><cmd>copen<CR>")
vim.keymap.set("n", "<leader>qc", "<Esc><cmd>ccl<CR>")
vim.keymap.set("n", "[q", "<Esc><cmd>cp<CR>")
vim.keymap.set("n", "]q", "<Esc><cmd>cn<CR>")
