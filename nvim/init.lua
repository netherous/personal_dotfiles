require('plugins')
vim.g.mapleader = ' ' 
--sourcing old vim config
vim.cmd([[
	so ~/.config/nvim/old.vim
]])
require('keybind')
require('lspconf')
require('after')
