require('lualine').setup {
  options = {
    theme = 'dracula-nvim'
  }
}

vim.cmd[[colorscheme dracula]]

vim.g.dracula_show_end_of_buffer = true
vim.g.dracula_transparent_bg = true
vim.g.dracula_lualine_bg_color = "#44475a"

vim.api.nvim_command("highlight CursorLine guibg=#2B2E3B")
