local builtin = require("telescope.builtin")
local telescope = require("telescope")
local live_grep_args = telescope.extensions.live_grep_args
local live_grep_args_shortcuts = require("telescope-live-grep-args.shortcuts")

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", live_grep_args.live_grep_args, {})
vim.keymap.set("n", "<leader>fc", function()
	live_grep_args_shortcuts.grep_word_under_cursor({ postfix = "" })
end, {})
vim.keymap.set("v", "<leader>fc", function()
	live_grep_args_shortcuts.grep_visual_selection({ postfix = "" })
end, {})
vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<CR>")
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- git
vim.keymap.set("n", "<Leader>gb", "<cmd>Telescope git_branches<CR>", { noremap = true, silent = true })

telescope.setup({
	opts = {
		extensions = {
			undo = {
				use_delta = true,
				use_custom_command = nil,
				side_bu_side = false,
				diff_context_lines = vim.o.scrolloff,
				entry_format = "state #$ID, $STATE, $TIME",
				time_format = "",
				saved_only = false,
				side_by_side = true,
				layout_strategy = "vertical",
				layout_config = {
					preview_height = 0.8,
				},
				mappings = {
					i = {
						["<cr>"] = require("telescope-undo.actions").yank_additions,
						["<S-cr>"] = require("telescope-undo.actions").yank_deletions,
						["<C-cr>"] = require("telescope-undo.actions").restore,
						-- alternative defaults, for users whose terminals do questionable things with modified <cr>
						["<C-y>"] = require("telescope-undo.actions").yank_deletions,
						["<C-r>"] = require("telescope-undo.actions").restore,
					},
					n = {
						["y"] = require("telescope-undo.actions").yank_additions,
						["Y"] = require("telescope-undo.actions").yank_deletions,
						["u"] = require("telescope-undo.actions").restore,
					},
				},
			},
		},
	},
})
telescope.load_extension("undo")
