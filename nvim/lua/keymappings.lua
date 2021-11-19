vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.api.nvim_set_keymap('n', '<leader>ei', [[<cmd>edit ~/.config/nvim/init.lua<cr>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>es', [[<cmd>edit ~/.config/nvim/lua/settings.lua<cr>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ep', [[<cmd>edit ~/.config/nvim/lua/plugins.lua<cr>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ek', [[<cmd>edit ~/.config/nvim/lua/keymappings.lua<cr>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ef', [[<cmd>edit ~/.config/nvim/lua/config/telescope.lua<cr>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>eT', [[<cmd>edit ~/.config/nvim/lua/terminal.lua<cr>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>et', [[<cmd>edit ~/.tmux.conf<cr>]], { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>ez', [[<cmd>edit ~/.zshrc<cr>]], { noremap = true })

vim.api.nvim_set_keymap('n', '<M-w>', [[<cmd>Sayonara<CR>]], { noremap = true } )
vim.api.nvim_set_keymap('n', '<M-W>', [[<cmd>Sayonara!<CR>]], { noremap = true } )

vim.api.nvim_set_keymap('n', '<M-s>', [[<cmd>w<CR>]], { noremap = true } )

vim.api.nvim_set_keymap("n", ";", ":", { noremap = true })
vim.api.nvim_set_keymap("v", ";", ":", { noremap = true })

vim.api.nvim_set_keymap("v", "<M-c>", '"+y', { noremap = true })

vim.api.nvim_set_keymap('n', 'c', '"_c', {noremap = true})
vim.api.nvim_set_keymap('n', 'x', '"_x', {noremap = true})
vim.api.nvim_set_keymap('n', 'd', '"_d', {noremap = true})

vim.api.nvim_set_keymap('v', 'c', '"_c', {noremap = true})
vim.api.nvim_set_keymap('v', 'x', '"_x', {noremap = true})
vim.api.nvim_set_keymap('v', 'd', '"_d', {noremap = true})

vim.api.nvim_set_keymap('n', 'C', '"_c', {noremap = true})
vim.api.nvim_set_keymap('n', 'D', '"_d', {noremap = true})

vim.api.nvim_set_keymap('v', 'C', '"_c', {noremap = true})
vim.api.nvim_set_keymap('v', 'D', '"_d', {noremap = true})
