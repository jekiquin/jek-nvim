require("core.keymaps")
require("core.plugins")
require("core.plugin_config")

vim.wo.number = true
vim.wo.relativenumber = true

vim.g.loaded_python_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0
-- vim.g.node_host_prog = vim.fn.system('nvm which current'):gsub('%s+', '') .. '/neovim-node-host'

-- only change the shell when it's on windows
if os.getenv('OS') == 'Windows_NT' then
  vim.opt.shell = "powershell.exe"
end
