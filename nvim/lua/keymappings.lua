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

vim.api.nvim_set_keymap("n", "Y", '<Plug>SystemCopy', {})
vim.api.nvim_set_keymap("v", "Y", '<Plug>SystemCopy', {})
vim.api.nvim_set_keymap("n", "YY", '<Plug>SystemCopyLine', {})
vim.api.nvim_set_keymap("v", "<M-c>", '<Plug>SystemCopy', {})

vim.api.nvim_set_keymap("i", "<c-v>", '<C-r><C-p>"', { noremap = true })

vim.api.nvim_set_keymap("n", "<M-v>", '"*p', { noremap = true })
vim.api.nvim_set_keymap("n", "<M-V>", '"*P', { noremap = true })
vim.api.nvim_set_keymap("v", "<M-v>", '"*p', { noremap = true })
vim.api.nvim_set_keymap("v", "<M-V>", '"*P', { noremap = true })
vim.api.nvim_set_keymap("i", "<m-v>", '<C-r><C-p>*', { noremap = true })
vim.api.nvim_set_keymap("c", "<m-v>", '<C-r>*', { noremap = true })
vim.api.nvim_set_keymap("c", "<c-v>", '<C-r>"', { noremap = true })

vim.api.nvim_set_keymap('n', 'x', 'x', {noremap = true})
vim.api.nvim_set_keymap('v', 'x', 'x', {noremap = true})
vim.api.nvim_set_keymap('n', 'X', 'X', {noremap = true})
vim.api.nvim_set_keymap('v', 'X', 'X', {noremap = true})

vim.api.nvim_set_keymap('n', 'dd', 'dd', {noremap = true})
vim.api.nvim_set_keymap('v', 'dd', 'dd', {noremap = true})

vim.api.nvim_set_keymap('n', 'r', [[<Plug>(SubversiveSubstitute)]], {})
vim.api.nvim_set_keymap('v', 'r', [[<Plug>(SubversiveSubstitute)]], {})

vim.api.nvim_set_keymap('n', 'rl', [[<Plug>(SubversiveSubstituteLine)]], {})
vim.api.nvim_set_keymap('v', 'rl', [[<Plug>(SubversiveSubstituteLine)]], {})

vim.api.nvim_set_keymap('n', 'R', [["*<Plug>(SubversiveSubstitute)]], {})
vim.api.nvim_set_keymap('v', 'R', [["*<Plug>(SubversiveSubstitute)]], {})

vim.api.nvim_set_keymap('n', 'RL', [["*<Plug>(SubversiveSubstituteLine)]], {})
vim.api.nvim_set_keymap('v', 'RL', [["*<Plug>(SubversiveSubstitute)]], {})

vim.api.nvim_set_keymap('n', '<m-h>', [[<c-\><c-n><cmd>lua require("tmux").move_left()<cr>]], { silent = true })
vim.api.nvim_set_keymap('n', '<m-j>', [[<c-\><c-n><cmd>lua require("tmux").move_bottom()<cr>]], { silent = true })
vim.api.nvim_set_keymap('n', '<m-k>', [[<c-\><c-n><cmd>lua require("tmux").move_top()<cr>]], { silent = true })
vim.api.nvim_set_keymap('n', '<m-l>', [[<c-\><c-n><cmd>lua require("tmux").move_right()<cr>]], { silent = true })

vim.api.nvim_set_keymap('i', '<m-h>', [[<c-\><c-n><cmd>lua require("tmux").move_left()<cr>]], { silent = true })
vim.api.nvim_set_keymap('i', '<m-j>', [[<c-\><c-n><cmd>lua require("tmux").move_bottom()<cr>]], { silent = true })
vim.api.nvim_set_keymap('i', '<m-k>', [[<c-\><c-n><cmd>lua require("tmux").move_top()<cr>]], { silent = true })
vim.api.nvim_set_keymap('i', '<m-l>', [[<c-\><c-n><cmd>lua require("tmux").move_right()<cr>]], { silent = true })

vim.api.nvim_set_keymap('i', '<c-h>', [[<c-\><c-n><cmd>lua require("tmux").move_left()<cr>]], { silent = true })
vim.api.nvim_set_keymap('i', '<c-j>', [[<c-\><c-n><cmd>lua require("tmux").move_bottom()<cr>]], { silent = true })
vim.api.nvim_set_keymap('i', '<c-k>', [[<c-\><c-n><cmd>lua require("tmux").move_top()<cr>]], { silent = true })
vim.api.nvim_set_keymap('i', '<c-l>', [[<c-\><c-n><cmd>lua require("tmux").move_right()<cr>]], { silent = true })

vim.api.nvim_set_keymap('v', '<', '<gv', {} )
vim.api.nvim_set_keymap('v', '>', '>gv', {} )

vim.api.nvim_set_keymap('n', '<M-a>', '<Esc>ggVG', {} )
vim.api.nvim_set_keymap('v', '<M-a>', '<Esc>ggVG', {} )
