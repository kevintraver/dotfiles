
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.cmd[[
  autocmd FileType clap_input let g:completion_enable_auto_pop = 0
  autocmd FileType clap_input inoremap <silent> <buffer> <C-n> <C-R>=clap#navigation#linewise('down')<CR>
  autocmd FileType clap_input inoremap <silent> <buffer> <C-p> <C-R>=clap#navigation#linewise('up')<CR>
]]

map('n', '<M-p>', [[<cmd>Clap command<cr>]], opts)
map('n', '<M-o>', [[<cmd>Clap files<cr>]], opts)
map('n', '<M-f>', [[<cmd>Clap blines<cr>]], opts)
map('n', '<C-M-f>', [[<cmd>Clap grep<cr>]], opts)
map("n", '<leader>fr', [[<cmd>Clap recent_files<cr>]], opts)
map('n', '<leader>fm', [[<cmd>Clap marks<cr>]], opts)
map('n', '<leader>fk', [[<cmd>Clap maps<cr>]], opts)
map('n', '<leader>ff', [[<cmd>Clap files<cr>]], opts)
map('n', '<leader>fy', [[<cmd>Clap yanks<cr>]], opts)

map('n', '<leader>gs', [[<cmd>Clap git_diff_files<cr>]], opts)
map('n', '<leader>gl', [[<cmd>Clap commits<cr>]], opts)
map('n', '<leader>gh', [[<cmd>Clap bcommits<cr>]], opts)
