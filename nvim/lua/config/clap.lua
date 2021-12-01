
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.cmd[[
  autocmd FileType clap_input let g:completion_enable_auto_pop = 0
]]

map('n', '<M-o>', [[<cmd>Clap files<cr>]], opts)
map('n', '<M-f>', [[<cmd>Clap blines<cr>]], opts)
map('n', '<C-M-f>', [[<cmd>Clap grep2<cr>]], opts)
map("n", '<leader>fr', [[<cmd>Clap recent_files<cr>]], opts)
map('n', '<leader>fm', [[<cmd>Clap marks<cr>]], opts)
map('n', '<leader>fk', [[<cmd>Clap maps<cr>]], opts)
map('n', '<leader>ff', [[<cmd>Clap files<cr>]], opts)
map('n', '<leader>fy', [[<cmd>Clap yanks<cr>]], opts)

map('n', '<leader>gs', [[<cmd>Clap git_diff_files<cr>]], opts)
map('n', '<leader>gl', [[<cmd>Clap commits<cr>]], opts)
map('n', '<leader>gh', [[<cmd>Clap bcommits<cr>]], opts)
