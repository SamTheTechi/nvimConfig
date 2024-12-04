require("vim-options")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy/.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")
require("image_preview").setup()
require("neo-tree").setup({
	filesystem = {
		window = {
			mappings = {
				["<leader>p"] = "image_wezterm", -- " or another map
			},
		},
		commands = {
			image_wezterm = function(state)
				local node = state.tree:get_node()
				if node.type == "file" then
					require("image_preview").PreviewImage(node.path)
				end
			end,
		},
	},
})
