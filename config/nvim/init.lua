require("utils")
require("config.lazy")

vim.opt.ignorecase = true
vim.opt.clipboard = "unnamedplus"

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

--vim.opt.mouse =

vim.cmd [[colorscheme habamax]]

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 300
