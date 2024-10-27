local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.opts.hl = "Label"
-- Header
dashboard.section.header.val = {
"                                                                                      ",
"                                                                                      ",
" 󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝    ",
"                                                                                      ",
"                                                                                      ",
"     ██╗ █████╗  ██████╗  ██████╗ ███████╗██████╗ ███╗   ██╗ █████╗ ██╗   ██╗████████╗",
"     ██║██╔══██╗██╔════╝ ██╔════╝ ██╔════╝██╔══██╗████╗  ██║██╔══██╗██║   ██║╚══██╔══╝",
"     ██║███████║██║  ███╗██║  ███╗█████╗  ██████╔╝██╔██╗ ██║███████║██║   ██║   ██║   ",
"██   ██║██╔══██║██║   ██║██║   ██║██╔══╝  ██╔══██╗██║╚██╗██║██╔══██║██║   ██║   ██║   ",
"╚█████╔╝██║  ██║╚██████╔╝╚██████╔╝███████╗██║  ██║██║ ╚████║██║  ██║╚██████╔╝   ██║   ",
" ╚════╝ ╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝ ╚═════╝    ╚═╝   ",
"                                                                                      ",
" 󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝   󱚝    ",
"                                                                                      ",
"                                    ██╗██████╗ ███████╗                               ",
"                                    ██║██╔══██╗██╔════╝                               ",
"                                    ██║██║  ██║█████╗                                 ",
"                                    ██║██║  ██║██╔══╝                                 ",
"                                    ██║██████╔╝███████╗                               ",
"                                    ╚═╝╚═════╝ ╚══════╝                               ",
"                                                                                      "

}
-- Set menu
dashboard.section.buttons.val = {
  dashboard.button( "e", "  : New file" , ":ene | startinsert <CR>"),
  dashboard.button( "f", "󰛔  : Find file", ":Telescope find_files <CR>"),
  dashboard.button( "s", "  : Settings" , ":cd $HOME/.config/nvim | Telescope find_files <CR>"),
  dashboard.button( "q", "󰰲  : Quit Jaggernaut", ":q <CR>"),
}
alpha.setup(dashboard.opts)
 -- Disable folding on alpha buffer
vim.cmd([[
  autocmd FileType alpha setlocal nofoldenable
]])
