vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local function my_on_attach(bufnr)
 local api = require "nvim-tree.api"
 local function opts(desc)
   return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
 end
 -- default mappings
 api.config.mappings.default_on_attach(bufnr)
 -- custom mappings
 vim.keymap.set('n', '<leader>vv', api.node.open.vertical, opts('Open Vertical'))
 vim.keymap.set('n', '<leader>hh', api.node.open.horizontal, opts('Open Horizontal'))
end

-- pass to setup along with your other options
require("nvim-tree").setup {
  git = {
    timeout = 4000,
    enable = true
  },
  view = {
    width = 50,
  },
  filters = {
    dotfiles = false,
    custom = {'^.git$'}
  },
  git = {
    ignore = false,
  },
  on_attach = my_on_attach,
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true
      }
    }
  }
}

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
