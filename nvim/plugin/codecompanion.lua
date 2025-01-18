vim.env["CODECOMPANION_TOKEN_PATH"] = vim.fn.expand("~/.secure")
require("codecompanion").setup({
  display = {
    action_palette = {
      provider = "telescope",
    },
  },
  strategies = {
    chat = {
      slash_commands = {
        ["file"] = {
          opts = {
            provider = "telescope",
          },
        },
      },
    },
  },
  adapters = {
    copilot = function()
      return require("codecompanion.adapters").extend("copilot", {
        schema = {
          --   model = {
          --     default = "o1-mini-2024-09-12"
          --   }
        },
      })
    end,
  },
})
vim.api.nvim_set_keymap("n", "<C-a>", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-a>", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
  "n",
  "<LocalLeader>a",
  "<cmd>CodeCompanionChat Toggle<cr>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "v",
  "<LocalLeader>a",
  "<cmd>CodeCompanionChat Toggle<cr>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap("v", "ga", "<cmd>CodeCompanionChat Add<cr>", { noremap = true, silent = true })

-- Expand 'cc' into 'CodeCompanion' in the command line
vim.cmd([[cab cc CodeCompanion]])
