
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<M-o>', [[<cmd>lua require('telescope.builtin').git_files({hidden=true})<CR>]], opts)
map('n', '<leader>ff', [[<cmd>lua require('telescope.builtin').git_files({hidden=true})<CR>]], opts)
map('n', '<leader>fg', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], opts)
map('n', '<leader>fo', [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]], opts)
map('n', '<leader>fb', [[<cmd>lua require('telescope.builtin').buffers()<CR>]], opts)
map('n', '<leader>fc', [[<cmd>lua require('telescope').extensions.neoclip.default()<CR>]], opts)
map('n', '<leader>fp', [[<cmd>lua require('telescope').extensions.projects.projects()<CR>]], opts)
map("n", "<leader>fr", [[<Cmd>lua require('telescope').extensions.frecency.frecency({ sorter = require("telescope").extensions.fzf.native_fzf_sorter() })<CR>]], opts)

map('n', '<leader>gs', [[<cmd>lua require('telescope.builtin').git_status()<CR>]], opts)
map('n', '<leader>gh', [[<cmd>lua require('telescope.builtin').git_commits()<CR>]], opts)
map('n', '<leader>gf', [[<cmd>lua require('telescope.builtin').git_bcommits()<CR>]], opts)
map('n', '<leader>gb', [[<cmd>lua require('telescope.builtin').git_branches()<CR>]], opts)

require('telescope').load_extension('fzf')
