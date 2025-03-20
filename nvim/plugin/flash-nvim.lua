-- Check if flash.nvim is available
local flash = require("flash");
flash.setup({});
-- Keymappings
local keymap = vim.keymap.set

keymap({"n", "x", "o"}, "s", function() flash.jump() end, { desc = "Flash" })
keymap({"n", "x", "o"}, "S", function() flash.treesitter() end, { desc = "Flash Treesitter" })
keymap({"n", "x", "o"}, "r", function() flash.remote() end, { desc = "Remote Flash" })
keymap({"n", "x", "o"}, "R", function() flash.treesitter_search() end, { desc = "Treesitter Search" })
keymap({"n", "x", "o"}, "<c-s>", function() flash.toggle() end, { desc = "Toggle Flash Search" })
