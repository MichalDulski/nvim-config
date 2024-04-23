vim.keymap.set("n", "<leader>sd", function() vim.cmd('Neotree toggle') end, { desc = "[S]how [d]irectory"})
vim.keymap.set("n", "<leader>sc", function() vim.cmd('Neotree reveal toggle') end, { desc = "[S]how [c]urrent directory"})
