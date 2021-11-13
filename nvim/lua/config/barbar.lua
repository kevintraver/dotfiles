local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<C-[>', '<cmd>BufferPick<CR>', opts)

map('n', '<C-p>', '<cmd>BufferPrevious<CR>', opts)
map('n', '<C-n>', '<cmd>BufferNext<CR>', opts)
