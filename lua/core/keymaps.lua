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

vim.keymap.set("n", "<leader>qa", ":q<CR>")
vim.keymap.set("n", "<leader>h", "^", { noremap = true })
vim.keymap.set("n", "<leader>l", "$", { noremap = true })
