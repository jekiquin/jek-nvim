local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function() 
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

-- git
vim.keymap.set('n', '<Leader>gb', ':Telescope git_branches<CR>', {noremap = true, silent = true})
