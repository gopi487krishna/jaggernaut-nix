-- Check if flash.nvim is available
local flash = require("flash");
flash.setup({});
-- Keymappings
local keymap = vim.keymap.set

-- Normal mode mappings
-- 's' for general flash search
keymap("n", "s", function() flash.jump() end, { desc = "Flash" })
-- 'S' for treesitter search
keymap("n", "S", function() flash.treesitter() end, { desc = "Flash Treesitter" })
-- Search with '/' and '?'
keymap("n", "/", function() flash.jump({ pattern = vim.fn.input("Search: ") }) end, { desc = "Flash Search" })

-- Visual mode mappings
keymap("x", "s", function() flash.jump() end, { desc = "Flash" })
keymap("x", "S", function() flash.treesitter() end, { desc = "Flash Treesitter" })

-- Operator-pending mode mappings
keymap("o", "s", function() flash.jump() end, { desc = "Flash" })
keymap("o", "S", function() flash.treesitter() end, { desc = "Flash Treesitter" })

-- Additional useful mappings
-- Jump to word beginning
keymap({"n", "x", "o"}, "f", function() flash.jump({ matcher = flash.matchers.char }) end, { desc = "Flash char" })
-- Jump to word ending
keymap({"n", "x", "o"}, "F", function() flash.jump({ matcher = flash.matchers.char, reverse = true }) end, { desc = "Flash char backwards" })
-- Jump to word with 2-character search
keymap({"n", "x", "o"}, "t", function() flash.jump({ matcher = flash.matchers.to }) end, { desc = "Flash to" })
-- Jump to word with 2-character search backwards
keymap({"n", "x", "o"}, "T", function() flash.jump({ matcher = flash.matchers.to, reverse = true }) end, { desc = "Flash to backwards" })

