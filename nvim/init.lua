require 'plugins'

vim.cmd('runtime macros/sandwich/keymap/surround.vim')

require("substitute").setup()

vim.keymap.set("n", "r", "<cmd>lua require('substitute').operator()<cr>", { noremap = true })
vim.keymap.set("n", "rl", "<cmd>lua require('substitute').line()<cr>", { noremap = true })
vim.keymap.set("n", "R", "<cmd>lua require('substitute').eol()<cr>", { noremap = true })
vim.keymap.set("x", "r", "<cmd>lua require('substitute').visual()<cr>", { noremap = true })

vim.keymap.set("n", "cx", "<cmd>lua require('substitute.exchange').operator()<cr>", { noremap = true })
vim.keymap.set("n", "cxx", "<cmd>lua require('substitute.exchange').line()<cr>", { noremap = true })
vim.keymap.set("x", "C", "<cmd>lua require('substitute.exchange').visual()<cr>", { noremap = true })
vim.keymap.set("n", "cxc", "<cmd>lua require('substitute.exchange').cancel()<cr>", { noremap = true })