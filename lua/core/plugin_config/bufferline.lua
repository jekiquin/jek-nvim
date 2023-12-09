vim.opt.termguicolors = true

vim.keymap.set("n", "<leader>bl", ":BufferLinePick<CR>")
vim.keymap.set("n", "<leader>cbl", ":BufferLineCloseOthers<CR>")

require("bufferline").setup({
  options = {
    diagnostics = "nvim_lsp",
    mode = "buffers",
    offsets = {
      {
        filetype = "NvimTree",
        text = "Jek Folders",
        highlight = "Directory",
        separator = true,
      }
    }
  }
})
