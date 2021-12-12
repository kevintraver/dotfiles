vim.g.extract_useDefaultMappings = false
vim.g.extract_maxCount = 25
vim.g.extract_autoCheckSystemClipboard = false

-- vim.api.nvim_set_keymap("n", "p", '[[<Plug>(extract-put)]]', { noremap = true })
-- vim.api.nvim_set_keymap("n", "P", '[[<Plug>(extract-Put)]]', { noremap = true })
--
-- vim.api.nvim_set_keymap("v", "p", '[[<Plug>(extract-put)]]', { noremap = true })
-- vim.api.nvim_set_keymap("v", "P", '[[<Plug>(extract-Put)]]', { noremap = true })
--
-- vim.api.nvim_set_keymap("v", "<leader>p", '[[<cmd>ExtractPin]]', {})
-- vim.api.nvim_set_keymap("v", "<leader>P", '[[<cmd>ExtractUnPin]]', {})
--
-- vim.api.nvim_set_keymap("n", "<c-n>", '[[<Plug>(extract-sycle)]]', { noremap = true })
-- vim.api.nvim_set_keymap("n", "<c-p>", '[[<Plug>(extract-Sycle)]]', { noremap = true })


vim.cmd[[

  nmap p <Plug>(extract-put)
  nmap P <Plug>(extract-Put)

  vmap p <Plug>(extract-put)
  vmap P <Plug>(extract-Put)

  nmap <leader>p :ExtractPin<cr>
  nmap <leader>P :ExtractUnPin<cr>

  map <c-n> <Plug>(extract-sycle)
  map <c-p> <Plug>(extract-Sycle)

]]
