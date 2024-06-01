vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

require("auto-session").setup {
  log_level = "error",
  bypass_session_save_file_types = nil,
  auto_restore_enabled = false,
  auto_save_enabled = true,
  cwd_change_handling = {
    restore_upcoming_session = true, -- already the default, no need to specify like this, only here as an example
    pre_cwd_changed_hook = nil, -- already the default, no need to specify like this, only here as an example
    post_cwd_changed_hook = function() -- example refreshing the lualine status line _after_ the cwd changes
      require("lualine").refresh() -- refresh lualine so the new session name is displayed in the status bar
    end,
  },
}

vim.keymap.set("n", "<leader>sr", "<Esc><cmd>SessionRestore<CR>", { noremap = true, silent = true })
