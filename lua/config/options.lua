-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Set the leader
vim.g.mapleader = " "

-- Make underlines curly
vim.cmd([[ let &t_Cs = "\e[4:3m"]])
vim.cmd([[ let &t_Ce = "\e[4:0m"]])

-- Set the max line length column
vim.opt.colorcolumn = "120"

-- Keep the cursor centered
vim.opt.scrolloff = 28

-- Disable the mouse
vim.opt.mouse = ""
