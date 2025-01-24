require("vim-options")

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field

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
