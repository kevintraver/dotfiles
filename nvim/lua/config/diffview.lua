vim.api.nvim_set_keymap('n', '<leader>df', [[<cmd>DiffviewOpen<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>dv', [[<cmd>DiffviewOpen<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>dl', [[<cmd>DiffviewFileHistory .<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<M-G>', [[<cmd>lua require('telescope.builtin').git_status()<CR>]], { noremap = true, silent = true })
