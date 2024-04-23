require('telescope').setup {
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            overrite_file_sorter = true,
            case_mode = "smart_case",
        },
        ['ui-select'] = {
            require('telescope.themes').get_dropdown(),
        },
    },
}


require('telescope').load_extension('fzf')
require('telescope').load_extension('ui-select')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>hs', builtin.help_tags, { desc = '[H]elp [S]earch' })
vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "search [p]roject [f]iles" })
vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = "search [g]it [f]iles" })
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end, { desc = "[p]roject [s]earch" })
