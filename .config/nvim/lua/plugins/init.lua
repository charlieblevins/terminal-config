return {
	'nvim-telescope/telescope.nvim', version = '*',
	dependencies = {
		'nvim-lua/plenary.nvim',
		-- optional but recommended
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	},
	{
	  "catppuccin/nvim", name = "catppuccin", priority = 1000,
	  config = function()
	    require("catppuccin").setup({
	      flavour = "auto",
	      background = { light = "latte", dark = "mocha" },
	    })
	    vim.cmd.colorscheme("catppuccin")
	  end,
	},
	-- auto-switch
	{ "f-person/auto-dark-mode.nvim", opts = {} },
}
