require("focus").setup()

vim.api.nvim_set_keymap('n', '<S-l>', '<cmd>FocusSplitNicely<CR>', { silent = true })

-- vim.api.nvim_set_keymap('n', '<c-l>', ":lua require('focus').split_nicely()<CR>", { silent = true })

