require("core.keymaps")
require("core.plugins")
require("core.plugin_config")

vim.wo.number = true
vim.wo.relativenumber = true

-- only change the shell when it's on windows
if os.getenv('OS') == 'Windows_NT' then
  vim.opt.shell = "powershell.exe"
end
