vim.g.extract_useDefaultMappings = false
vim.g.extract_maxCount = 25
vim.g.extract_autoCheckSystemClipboard = false

vim.api.nvim_set_keymap("n", "p", [[<Plug>(extract-put)]], {})
vim.api.nvim_set_keymap("n", "P", [[<Plug>(extract-Put)]], {})

vim.api.nvim_set_keymap("v", "p", [[<Plug>(extract-put)]], {})
vim.api.nvim_set_keymap("v", "P", [[<Plug>(extract-Put)]], {})

vim.api.nvim_set_keymap("v", "<leader>p", [[<cmd>ExtractPin]], {})
vim.api.nvim_set_keymap("v", "<leader>P", [[<cmd>ExtractUnPin]], {})

vim.api.nvim_set_keymap("", "<c-n>", [[<Plug>(extract-sycle)]], {})
vim.api.nvim_set_keymap("", "<c-p>", [[<Plug>(extract-Sycle)]], {})
