local nvimtree = require("nvim-tree")
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup()

--keymaps
vim.api.nvim_set_keymap('n', '<leader>ee', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
-- Switch focus back to NvimTree
vim.api.nvim_set_keymap('n', '<leader>et', ':NvimTreeFocus<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>eb', '<C-w>l', {noremap = true, silent = true})

