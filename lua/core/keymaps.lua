vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set('n', '<C-s>', ':w<CR>', {noremap = true, silent = true})
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>', {noremap = true, silent = true})
vim.keymap.set('v', '<C-s>', '<Esc>:w<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>sq', ':wq<CR>')
vim.keymap.set('n', '<leader>qq', ':q<CR>')
vim.keymap.set('n', '<leader>h', '^', {noremap = true})
vim.keymap.set('n', '<leader>l', '$', {noremap = true})
