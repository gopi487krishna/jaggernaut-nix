require("toggleterm").setup {
    open_mapping = [[<c-\>]],
    direction = 'float',
    float_opts = {
      border = 'curved'
    },
}

local Terminal  = require('toggleterm.terminal').Terminal

-- Integrated Lazy Terminal
local lazygit_term = Terminal:new({
  cmd = "lazygit",
  hidden = true,
  direction = "float",
  float_opts = {
    border = "double",
  },
}
)

function LazygitTermToogle()
  lazygit_term:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>gg", "<cmd>lua LazygitTermToogle()<CR>", {noremap = true, silent = true})


-- Integrated Aider Terminal
local aider_term = Terminal:new({
  cmd = "aider --model openrouter/anthropic/claude-3.7-sonnet --watch-files",
  hidden = true,
  direction = "vertical",
  on_open = function(self)
    self:resize(vim.o.columns * 0.35)
  end
}
)

function AiderTermToggle()
  aider_term:toggle()
end
vim.api.nvim_set_keymap("n", "<leader>aa", "<cmd>lua AiderTermToggle()<CR>", {noremap = true, silent = true})

-- Simple Vertical Terminal
local vertical_term = Terminal:new({
  hidden = true,
  direction = "vertical",
  on_open = function(self)
    self:resize(vim.o.columns * 0.35)
  end
}
)

function VerticalTermToggle()
  vertical_term:toggle()
end
vim.api.nvim_set_keymap("n", "<leader>vv", "<cmd>lua VerticalTermToggle()<CR>", {noremap = true, silent = true})

