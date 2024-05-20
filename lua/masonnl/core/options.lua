vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- Tabs and indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

-- Search settings
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true -- Highlight the current line

-- Turn on termguicolors for colorschemes to work as expected
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Backspace
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Split windows
opt.splitright = true
opt.splitbelow = true

-- Keep the cursor centered
vim.opt.scrolloff = 28

-- Make underlines curly
vim.cmd([[ let &t_Cs = "\e[4:3m"]])
vim.cmd([[ let &t_Ce = "\e[4:0m"]])
