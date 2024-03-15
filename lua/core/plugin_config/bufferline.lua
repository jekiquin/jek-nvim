vim.opt.termguicolors = true

vim.keymap.set("n", "<leader>bl", "<cmd>BufferLinePick<CR>")
vim.keymap.set("n", "<leader>cbl", "<cmd>BufferLineCloseOthers<CR>")
vim.keymap.set("n", "<leader>bq", "<CMD> bp <BAR> bd #<CR>")
vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>")
vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>")

require("bufferline").setup({
	options = {
		diagnostics = "nvim_lsp",

		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			local s = " "
			for e, n in pairs(diagnostics_dict) do
				local sym = e == "error" and " " or (e == "warning" and " ")
				if sym then
					s = s .. n .. sym
				end
			end
			return s
		end,
		mode = "buffers",
		offsets = {
			{
				filetype = "NvimTree",
				text = "Jek Folders",
				highlight = "Directory",
				separator = true,
			},
		},
	},
})
