require 'plugins'

vim.cmd('runtime macros/sandwich/keymap/surround.vim')

vim.keymap.set("n", "r", "<cmd>lua require('substitute').operator()<cr>", { noremap = true })
vim.keymap.set("n", "rl", "<cmd>lua require('substitute').line()<cr>", { noremap = true })
vim.keymap.set("n", "R", "<cmd>lua require('substitute').eol()<cr>", { noremap = true })
vim.keymap.set("x", "r", "<cmd>lua require('substitute').visual()<cr>", { noremap = true })
