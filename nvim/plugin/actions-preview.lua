require("actions-preview").setup()
vim.keymap.set({ "v", "n" }, "gf", require("actions-preview").code_actions)
