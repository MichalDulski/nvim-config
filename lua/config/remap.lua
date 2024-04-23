local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Open explorer
keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Moving selected visual block up'n'down
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join lines without moving the cursor
keymap.set("n", "J", "mzJ`z")

-- Keep cursor in the middle while searching
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Paste without losing current paste buffer
keymap.set("x", "<leader>p", '"_dP')

-- Yank into system clipboard
keymap.set("n", "<leader>y", '"+y')
keymap.set("v", "<leader>y", '"+y')
keymap.set("n", "<leader>Y", '"+Y')

-- Replace word under the cursor
keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Increment/decrement a number
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "ggVG")

-- Split window
keymap.set("n", "<leader>sh", ":split<Return>", opts)
keymap.set("n", "<leader>sv", ":vsplit<Return>", opts)

-- Window navigation
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sl", "<C-w>l")

-- Window resizing
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

keymap.set("n", "<leader><C-w>t", function()
	vim.opt.list = true
end, { desc = "Show witespaces" })
keymap.set("n", "<leader><C-w>f", function()
	vim.opt.list = false
end, { desc = "Hide whitespaces" })
