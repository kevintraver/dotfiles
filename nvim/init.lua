require("plugins")

-- Highlight yank
vim.api.nvim_command([[
  autocmd TextYankPost * silent lua require('vim.highlight').on_yank({higroup = 'Visual', timeout = 1000}) 
]])

-- Keep selection when indenting
vim.keymap.set("v", "<", "<gv", {})
vim.keymap.set("v", ">", ">gv", {})

require("substitute").setup()

-- Keymappings for substitute
vim.keymap.set("n", "r", [[<cmd>lua require('substitute').operator()<cr>]], { noremap = true })
vim.keymap.set("n", "rl", [[<cmd>lua require('substitute').line()<cr>]], { noremap = true })
vim.keymap.set("x", "r", [[<cmd>lua require('substitute').visual()<cr>]], { noremap = true })
vim.keymap.set("x", "R", [["*<cmd>lua require('substitute').visual()<cr>]], { noremap = true })

vim.keymap.set("n", "cx", "<cmd>lua require('substitute.exchange').operator()<cr>", { noremap = true })
vim.keymap.set("n", "cxx", "<cmd>lua require('substitute.exchange').line()<cr>", { noremap = true })
vim.keymap.set("x", "C", "<cmd>lua require('substitute.exchange').visual()<cr>", { noremap = true })
vim.keymap.set("n", "cxc", "<cmd>lua require('substitute.exchange').cancel()<cr>", { noremap = true })

-- Keymappings for vim-sandwich
vim.api.nvim_exec(
	[[

    let g:sandwich_no_default_key_mappings = 1
    silent! nmap <unique><silent> 'd <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
    silent! nmap <unique><silent> 'r <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
    silent! nmap <unique><silent> 'D <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)
    silent! nmap <unique><silent> 'R <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)

    let g:operator_sandwich_no_default_key_mappings = 1
    silent! map <unique> 'a <Plug>(operator-sandwich-add)
    silent! xmap <unique> 'd <Plug>(operator-sandwich-delete)
    silent! xmap <unique> 'r <Plug>(operator-sandwich-replace)

  ]],
	false
)

-- Keymappings for vim-system-copy
vim.keymap.set("n", "Y", "<Plug>SystemCopy", {})
vim.keymap.set("v", "Y", "<Plug>SystemCopy", {})
vim.keymap.set("n", "YY", "<Plug>SystemCopyLine", {})
