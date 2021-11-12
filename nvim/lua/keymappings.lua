vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.api.nvim_set_keymap('n', '<leader>ei', [[<cmd>edit ~/.config/nvim/init.lua<cr>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>es', [[<cmd>edit ~/.config/nvim/lua/settings.lua<cr>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ep', [[<cmd>edit ~/.config/nvim/lua/plugins.lua<cr>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ek', [[<cmd>edit ~/.config/nvim/lua/keymappings.lua<cr>]], { noremap = true })
