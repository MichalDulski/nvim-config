require "nvchad.mappings"
local opts = { noremap = true, silent = true}
-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Keep cursor in the middle while searching
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Moving selected visual block up'n'down
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Paste withot losing current paste buffer
map("x", "<leader>p", '"_dP')

-- Yank into system clipboard
map("n", "<leader>y", '"+y')
map("v", "<leader>y", '"+y')
map("n", "<leader>Y", '"+Y')

-- Replace word under the cursor
map("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])


-- Increment/decrement a number
map("n", "+", "<C-a>")
map("n", "-", "<C-x>")

-- Select all
map("n", "<C-a>", "ggVG")

-- Join lines without moving the cursor
map("n", "J", "mzJ`z")

-- Split window
map("n", "<leader>wh", ":split<Return>", opts)
map("n", "<leader>wv", ":vsplit<Return>", opts)
map("n", "<leader>w=", "<C-w>=", { desc = "Equalize windows" })
map("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close window" })
map("n", "<leader>wo", "<cmd>only<CR>", { desc = "Keep only current window" })

-- Window resizing
map("n", "<leader>w<left>", "<C-w><", { desc = "Resize window left" })
map("n", "<leader>w<right>", "<C-w>>", { desc = "Resize window right" })
map("n", "<leader>w<up>", "<C-w>+", { desc = "Resize window up" })
map("n", "<leader>w<down>", "<C-w>-", { desc = "Resize window down" })

map("n", "<leader>wt", function()
	vim.opt.list = true
end, { desc = "Show whitespaces" })
map("n", "<leader>wf", function()
	vim.opt.list = false
end, { desc = "Hide whitespaces" })
