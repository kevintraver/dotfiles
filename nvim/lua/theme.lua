require('lualine').setup {
  options = {
    theme = 'github',
  }
}

require("github-theme").setup({
  theme_style = "dimmed",
  dark_sidebar = false
 })

 vim.cmd [[ autocmd ColorScheme * lua require('lightspeed').init_highlight(true) ]]
