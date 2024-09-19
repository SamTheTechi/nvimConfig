return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			transparent_background = true,
			show_end_of_buffer = false,
			term_colors = false,
			dim_inactive = {
				enabled = true,
				shade = "dark",
				percentage = 0.15,
			},
			styles = {
				comments = { "italic" },
			},
			color_overrides = {},
			custom_highlights = {},
			default_integrations = true,
			integrations = {
				harpoon = true,
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				treesitter = true,
				notify = true,
				mini = {
					enabled = true,
					indentscope_color = "",
				},
			},
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
