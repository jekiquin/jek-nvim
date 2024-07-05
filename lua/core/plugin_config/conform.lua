local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { { "prettier", "prettierd" } },
		javascriptreact = { { "prettier", "prettierd" } },
		typescript = { { "prettier", "prettierd" } },
		typescriptreact = { { "prettier", "prettierd" } },
		vue = { { "prettier", "prettierd" } },
		css = { { "prettier", "prettierd" } },
		scss = { { "prettier", "prettierd" } },
		less = { { "prettier", "prettierd" } },
		html = { { "prettier", "prettierd" } },
		json = { { "prettier", "prettierd" } },
		jsonc = { { "prettier", "prettierd" } },
		yaml = { { "prettier", "prettierd" } },
		markdown = { { "prettier", "prettierd" } },
		["markdown.mdx"] = { { "prettier", "prettierd" } },
		graphql = { { "prettier", "prettierd" } },
		handlebars = { { "prettier", "prettierd" } },
	},
})

vim.keymap.set("n", "<Leader>f", function()
	conform.format({ bufnr = vim.api.nvim_get_current_buf(), timeout_ms = 10000, lsp_fallback = true })
end)
