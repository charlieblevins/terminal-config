-- enable macOS clipboard
vim.opt.clipboard = "unnamedplus"

-- leader key - space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- plugin manager
require("config.lazy")
