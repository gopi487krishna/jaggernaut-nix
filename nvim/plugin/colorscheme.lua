vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function()
		vim.api.nvim_set_hl(0, "DAP_LINE_COLOR", { bg = "#404040" })
		vim.api.nvim_set_hl(0, "DAP_BREAKPOINT", { fg = "#FF0000" })
	end,
})
vim.cmd([[colorscheme ayu-dark]])
