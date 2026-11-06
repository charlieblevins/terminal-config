local excludes = { "node_modules", ".git" }

local fd_args = { "fd", "--type", "f", "--hidden", "--strip-cwd-prefix" }
local rg_globs = {}
for _, dir in ipairs(excludes) do
	vim.list_extend(fd_args, { "--exclude", dir })
	vim.list_extend(rg_globs, { "--glob", "!**/" .. dir .. "/**" })
end

return {
	'nvim-telescope/telescope.nvim', version = '*',
	dependencies = {
		'nvim-lua/plenary.nvim',
		-- optional but recommended
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	},
	opts = {
		pickers = {
			find_files = {
				find_command = fd_args,
			},
			live_grep = {
				additional_args = vim.list_extend({ "--hidden" }, vim.deepcopy(rg_globs)),
			},
		},
	},
	config = function(_, opts)
		require("telescope").setup(opts)
		require("telescope").load_extension("fzf")
	end,
	keys = {
		{ '<leader>ff', function() require('telescope.builtin').find_files() end, desc = 'Telescope find files' },
		{ '<leader>fg', function() require('telescope.builtin').live_grep() end, desc = 'Telescope live grep' },
		{ '<leader>fF', function()
			require('telescope.builtin').find_files({
				find_command = vim.list_extend(vim.deepcopy(fd_args), { "--no-ignore" }),
			})
		end, desc = 'Telescope find files (incl. ignored)' },
		{ '<leader>fG', function()
			require('telescope.builtin').live_grep({
				additional_args = vim.list_extend({ "--hidden", "--no-ignore" }, vim.deepcopy(rg_globs)),
			})
		end, desc = 'Telescope live grep (incl. ignored)' },
		{ '<leader>fb', function() require('telescope.builtin').buffers() end, desc = 'Telescope buffers' },
		{ '<leader>fh', function() require('telescope.builtin').help_tags() end, desc = 'Telescope help tags' },
	},
}
