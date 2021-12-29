require'nvim-spotify'.setup{}

vim.api.nvim_set_keymap("n", "<leader>sp", ":Spotify<CR>",  { silent = true }) -- Open Spotify Search window
