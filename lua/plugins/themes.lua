-- return {
-- "sainnhe/gruvbox-material",
-- lazy = false,
-- priority = 1000,
-- config = function()
-- vim.g.gruvbox_material_background = "hard"
-- vim.g.gruvbox_material_enable_italic = 1
-- vim.cmd("colorscheme gruvbox-material")
-- end,
-- }

return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("tokyonight").setup({
			style = "moon", -- options: "night", "storm", "moon", "day"
			transparent = true,
			styles = {
				comments = { italic = true },
			},
		})
		vim.cmd("colorscheme tokyonight")
	end,
}

-- return {
-- "nyoom-engineering/oxocarbon.nvim",
-- lazy = false,
-- priority = 1000,
-- config = function()
-- vim.cmd("colorscheme oxocarbon")
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
-- end,
-- }


-- return {
-- "catppuccin/nvim",
-- lazy = false,
-- name = "catppuccin",
-- priority = 1000,
-- config = function()
-- require("catppuccin").setup({
-- flavour = "mocha",
-- transparent_background = true,
-- show_end_of_buffer = false,
-- term_colors = false,
-- dim_inactive = {
-- enabled = true,
-- shade = "dark",
-- percentage = 0.15,
-- },
-- styles = {
-- comments = { "italic" },
-- },
-- color_overrides = {},
-- custom_highlights = {},
-- default_integrations = true,
-- integrations = {
-- harpoon = true,
-- cmp = true,
-- gitsigns = true,
-- nvimtree = true,
-- treesitter = true,
-- notify = true,
-- mini = {
-- enabled = true,
-- indentscope_color = "",
-- },
-- },
-- })
-- vim.cmd.colorscheme("catppuccin")
-- end,
-- }
