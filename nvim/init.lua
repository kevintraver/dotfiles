require 'plugins'

vim.cmd('runtime macros/sandwich/keymap/surround.vim')

vim.api.nvim_set_keymap('n', 'r', [[<Plug>(SubversiveSubstitute)]], {})
vim.api.nvim_set_keymap('v', 'r', [[<Plug>(SubversiveSubstitute)]], {})

vim.api.nvim_set_keymap('n', 'rl', [[<Plug>(SubversiveSubstituteLine)]], {})
vim.api.nvim_set_keymap('v', 'rl', [[<Plug>(SubversiveSubstituteLine)]], {})