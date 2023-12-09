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
    enable = false,
    ignore = true,
  },
  view = {
    width = 50,
    adaptive_size = false,
    preserve_window_proportions = true,
  },
  filters = {
    dotfiles = false,
    custom = {'^.git$'}
  },
  sync_root_with_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = false,
    ignore_list = {}
  },
  on_attach = my_on_attach,
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true
      },
      glyphs = {
        default = "󰈚",
        symlink = "",
        folder = {
          default = "",
          empty = "",
          empty_open = "",
          open = "",
          symlink = "",
          symlink_open = "",
          arrow_open = "",
          arrow_closed = "",
        },
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "◌",
        }
      }
    }
  }
}

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
