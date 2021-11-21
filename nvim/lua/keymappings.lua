vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.api.nvim_set_keymap('n', '<leader>ei', [[<cmd>edit ~/.config/nvim/init.lua<cr>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>es', [[<cmd>edit ~/.config/nvim/lua/settings.lua<cr>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ep', [[<cmd>edit ~/.config/nvim/lua/plugins.lua<cr>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ek', [[<cmd>edit ~/.config/nvim/lua/keymappings.lua<cr>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ef', [[<cmd>edit ~/.config/nvim/lua/config/telescope.lua<cr>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>eT', [[<cmd>edit ~/.config/nvim/lua/terminal.lua<cr>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>et', [[<cmd>edit ~/.dotfiles/.tmux.conf<cr>]], { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>ez', [[<cmd>edit ~/.dotfiles/.zshrc<cr>]], { noremap = true })

vim.api.nvim_set_keymap('n', '<M-w>', [[<cmd>Sayonara<CR>]], { noremap = true } )
vim.api.nvim_set_keymap('n', '<M-W>', [[<cmd>Sayonara!<CR>]], { noremap = true } )

vim.api.nvim_set_keymap('n', '<M-s>', [[<cmd>w<CR>]], { noremap = true } )

vim.api.nvim_set_keymap('n', '<M-q>', [[<Esc><Esc><cmd>qall<cr>]], { noremap = true } )
vim.api.nvim_set_keymap('n', '<M-Q>', [[<Esc><Esc><cmd>qall!<cr>]], { noremap = true } )
vim.api.nvim_set_keymap('i', '<M-q>', [[<Esc><Esc><cmd>qall<cr>]], { noremap = true } )
vim.api.nvim_set_keymap('i', '<M-Q>', [[<Esc><Esc><cmd>qall!<cr>]], { noremap = true } )
vim.api.nvim_set_keymap('v', '<M-q>', [[<Esc><Esc><cmd>qall<cr>]], { noremap = true } )
vim.api.nvim_set_keymap('v', '<M-Q>', [[<Esc><Esc><cmd>qall!<cr>]], { noremap = true } )

vim.api.nvim_set_keymap("n", ";", ":", { noremap = true })
vim.api.nvim_set_keymap("v", ";", ":", { noremap = true })

vim.api.nvim_set_keymap("v", "<M-c>", '"*y', { noremap = true })

vim.api.nvim_set_keymap("n", "<M-v>", '"*p', { noremap = true })
vim.api.nvim_set_keymap("v", "<M-v>", '"*p', { noremap = true })
vim.api.nvim_set_keymap("i", "<M-v>", '<C-r><C-p>*', { noremap = true })

vim.api.nvim_set_keymap('n', 'c', '"_c', {noremap = true})
vim.api.nvim_set_keymap('v', 'c', '"_c', {noremap = true})
vim.api.nvim_set_keymap('n', 'C', '"_C', {noremap = true})
vim.api.nvim_set_keymap('v', 'C', '"_C', {noremap = true})
