return {

	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	cmd = "Neotree",
	keys = {
		{ "<C-\\>", ":Neotree toggle right<CR>", desc = "NeoTree toggle right", silent = true },
	},
	opts = {
		filesystem = {
			window = {
				mappings = {
					["<C-\\>"] = "close_window",
				},
			},
		},
	},
}
