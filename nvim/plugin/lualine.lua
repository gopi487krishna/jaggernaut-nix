if vim.g.did_load_lualine_plugin then
  return
end
vim.g.did_load_lualine_plugin = true

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			sections = {
				lualine_y = {
					function()
						return os.date("%H:%M:%S")
					end,
				},
			},
		})
	end,
}
