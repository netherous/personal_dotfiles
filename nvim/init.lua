vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require('plugins')
vim.g.mapleader = ' ' 
--sourcing old vim config
vim.cmd([[
	so ~/.config/nvim/old.vim
]])
require('keybind')
require('lspconf')
require('after')
