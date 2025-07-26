-- Exit if the language server isn't available
-- if vim.fn.executable('clangd') ~= 1 then
--   return
-- end
--
local root_files = {
  '.git',
  'compile_commands.json'
}

vim.lsp.start {
  name = 'clangd_lsp',
  cmd = { 'clangd' },
  root_dir = vim.fs.dirname(vim.fs.find(root_files, { upward = true })[1]),
  capabilities = require('user.lsp').make_client_capabilities(),
}
