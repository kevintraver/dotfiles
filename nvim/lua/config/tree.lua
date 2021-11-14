vim.g.nvim_tree_respect_buf_cwd = 1

require("nvim-tree").setup({
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true
  },
})

vim.api.nvim_set_keymap("n", "<leader>t", "<cmd>NvimTreeToggle<cr>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>T", "<cmd>NvimTreeFindFile<cr>", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<M-k>", "<cmd>NvimTreeFindFile<cr>", {noremap = true, silent = true})
