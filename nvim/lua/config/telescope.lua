require("telescope").load_extension("frecency")

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>ff', [[<cmd>lua require('telescope.builtin').git_files({hidden=true})<CR>]], opts)
map('n', '<leader>fg', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], opts)
map('n', '<leader>fo', [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]], opts)
map('n', '<leader>fb', [[<cmd>lua require('telescope.builtin').buffers()<CR>]], opts)
map('n', '<leader>fp', [[<cmd>lua require('telescope').extensions.projects.projects()<CR>]], opts)
map("n", "<leader>fr", [[<Cmd>lua require('telescope').extensions.frecency.frecency()<CR>]], opts)
