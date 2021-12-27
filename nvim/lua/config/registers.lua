vim.api.nvim_set_keymap('n', '"', [[<cmd>lua require'registers'.registers('')<cr>]], {silent = true} )
vim.g.registers_paste_in_normal_mode = 1
