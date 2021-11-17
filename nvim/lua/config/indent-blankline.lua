require("indent_blankline").setup { }
vim.g.indent_blankline_enabled = false

vim.api.nvim_set_keymap('n', '<leader>ii', [[<cmd>IndentBlanklineToggle<cr>]], { noremap = true })
