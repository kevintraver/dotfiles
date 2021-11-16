local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<Space><Space>', '<cmd>BufferPick<CR>', opts)


map('n', '<M-t>', '<cmd>BufferPick<CR>', opts)
