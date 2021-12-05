require('hlslens').setup({
  auto_enable = true,
  enable_incsearch = true,
  calm_down = true,
  nearest_only = true,
  nearest_float_when = 'auto',
  float_shadow_blend = 50,
  virt_priority = 100
})

vim.cmd([[com! HlSearchLensToggle lua require('hlslens').toggle()]])

vim.api.nvim_set_keymap("", "*", [[<Plug>(asterisk-z*)<Cmd>lua require("hlslens").start()<CR>]], {})
vim.api.nvim_set_keymap("", "#", [[<Plug>(asterisk-z#)<Cmd>lua require("hlslens").start()<CR>]], {})
vim.api.nvim_set_keymap("", "g*", [[<Plug>(asterisk-zg*)<Cmd>lua require("hlslens").start()<CR>]], {})
vim.api.nvim_set_keymap("", "g#", [[<Plug>(asterisk-zg#)<Cmd>lua require("hlslens").start()<CR>]], {})

vim.api.nvim_set_keymap("n", "n", [[<Cmd>execute("normal! " . v:count1 . "n")<CR><Cmd>lua require("hlslens").start()<CR>]], {noremap = true})
vim.api.nvim_set_keymap("n", "N", [[<Cmd>execute("normal! " . v:count1 . "N")<CR><Cmd>lua require("hlslens").start()<CR>]], {noremap = true})
