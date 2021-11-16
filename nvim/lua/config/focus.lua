require("focus").setup({
  tmux = true,
  excluded_buftypes = { 'nofile', 'prompt', 'popup', 'quickfix'}
})

vim.api.nvim_set_keymap('n', '<M-l>', '<cmd>FocusSplitNicely<CR>', { silent = true })
