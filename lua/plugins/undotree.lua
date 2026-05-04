return {
	"mbbill/undotree",
    lazy = false,
	config = function()
		vim.keymap.set("n", "<C-u>", vim.cmd.UndotreeToggle)
	end,
}
