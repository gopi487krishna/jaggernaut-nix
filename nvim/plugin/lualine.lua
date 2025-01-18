if vim.g.did_load_lualine_plugin then
  return
end
vim.g.did_load_lualine_plugin = true

require("lualine").setup({
	sections = {
		lualine_y = {
			function()
				return os.date("%H:%M:%S")
			end,
		},
	},
})
