require("focus").setup({tmux = true})

vim.api.nvim_set_keymap('n', '<M-l>', '<cmd>FocusSplitNicely<CR>', { silent = true })
