vim.g.mapleader = " "

local keymap = vim.keymap

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Split window
keymap.set("n", "ss", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "sv", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "sx", "<cmd>close<CR>", { desc = "Close split" })

-- Move to window
keymap.set("n", "sh", "<C-w>h", { desc = "Move left" }) -- left
keymap.set("n", "sk", "<C-w>k", { desc = "Move up" }) -- up
keymap.set("n", "sj", "<C-w>j", { desc = "Move down" }) -- down
keymap.set("n", "sl", "<C-w>l", { desc = "Move right" }) -- right

-- Move buffers
keymap.set("n", "L", "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
keymap.set("n", "H", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer" })

-- move highlighted code up or down and smartly indent
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Find and replace in the entire buffer
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", { desc = "Replace all words" })

-- disable q
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "q", "<nop>")

-- Enable inlay hints
vim.keymap.set("n", "<leader>h", vim.lsp.inlay_hint.enable, { desc = "Toggle inlay hints" })
