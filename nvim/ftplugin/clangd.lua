-- Exit if the language server isn't available
if vim.fn.executable('clangd') ~= 1 then
  return
end

local root_files = {
  '.git',
  'compile_commands.json'
}

local navbuddy = require("nvim-navbuddy")

vim.lsp.start {
  name = 'clangd_lsp',
  cmd = { 'clangd' },
  on_attach= function(client, bufnr)
    navbuddy.attach(client, bufnr)
  end,
  root_dir = vim.fs.dirname(vim.fs.find(root_files, { upward = true })[1]),
  capabilities = require('user.lsp').make_client_capabilities(),
}
