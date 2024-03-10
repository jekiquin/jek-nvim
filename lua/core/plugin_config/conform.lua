local conform = require("conform")
local format_config = {
	lsp_fallback = true,
	timeout_ms = 500,
	async = false,
}

conform.setup({
	formatters_by_ft = {
		javascript = { { "prettierd", "prettier" } },
		javascriptreact = { { "prettierd", "prettier" } },
		typescript = { { "prettierd", "prettier" } },
		typescriptreact = { { "prettierd", "prettier" } },
		vue = { { "prettierd", "prettier" } },
		css = { { "prettierd", "prettier" } },
		scss = { { "prettierd", "prettier" } },
		less = { { "prettierd", "prettier" } },
		html = { { "prettierd", "prettier" } },
		json = { { "prettierd", "prettier" } },
		jsonc = { { "prettierd", "prettier" } },
		yaml = { { "prettierd", "prettier" } },
		markdown = { { "prettierd", "prettier" } },
		["markdown.mdx"] = { { "prettierd", "prettier" } },
		graphql = { { "prettierd", "prettier" } },
		handlebars = { { "prettierd", "prettier" } },
		graphql = { { "prettierd", "prettier" } },
		python = { "isort", "black" },
		lua = { "stylua" },
	},
	format_on_save = format_config,
})

vim.keymap.set({ "n", "v" }, "<leader>f", function()
	conform.format(format_config)
end)

vim.api.nvim_create_user_command("UpdateAndFormat", function()
	local_format_config = format_config
	local_format_config.bufnr = vim.api.nvim_get_current_buf()
	conform.format(local_format_config)
	vim.cmd("update")
end, {})

vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<Esc>:UpdateAndFormat<CR>", { noremap = true, silent = true })
