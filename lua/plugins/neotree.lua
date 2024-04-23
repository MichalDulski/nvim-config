return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim",
		},
		config = function()
			require("neo-tree").setup({
				close_if_last_window = true,
				enable_git_status = true,
				default_component_configs = {
					name = {
						use_git_status_colors = true,
					},
				},
			})

			vim.keymap.set("n", "<leader>sd", function()
				vim.cmd("Neotree toggle")
			end, { desc = "[S]how [d]irectory" })

			vim.keymap.set("n", "<leader>sc", function()
				vim.cmd("Neotree reveal toggle")
			end, { desc = "[S]how [c]urrent directory" })
		end,
	},
	{ "nvim-tree/nvim-web-devicons", lazy = true },
	{ "nvim-treesitter/nvim-treesitter-context" },
}
