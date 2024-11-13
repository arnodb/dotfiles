require("utils")
require("config.lazy")

vim.opt.clipboard = "unnamedplus"

vim.cmd [[colorscheme vim]]

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'
