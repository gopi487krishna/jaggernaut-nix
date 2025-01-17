require('lualine').setup {
  sections = {
    lualine_y = {
      function()
        return os.date('%H:%M:%S')
      end,
    },
  },
}
