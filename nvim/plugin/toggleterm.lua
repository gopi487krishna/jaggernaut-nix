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

vim.api.nvim_set_keymap("n", "<leader>tg", "<cmd>lua LazygitTermToogle()<CR>", {noremap = true, silent = true})


-- Integrated Aider Terminal
local aider_term = Terminal:new({
  cmd = "aider --model openrouter/openai/o3-mini --watch-files",
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
vim.api.nvim_set_keymap("n", "<leader>ta", "<cmd>lua AiderTermToggle()<CR>", {noremap = true, silent = true})

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
vim.api.nvim_set_keymap("n", "<leader>tv", "<cmd>lua VerticalTermToggle()<CR>", {noremap = true, silent = true})

