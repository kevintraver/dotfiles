vim.g.nvim_tree_respect_buf_cwd = 1

local tree_cb = require "nvim-tree.config".nvim_tree_callback

require("nvim-tree").setup({
  view = {
    mappings = {
      list = {
        { key = "l", cb = tree_cb("edit") },
        { key = "h", cb = tree_cb("close_node") },
      }
    }
  },
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true
  }
})

vim.api.nvim_set_keymap("n", "<leader>t", "<cmd>NvimTreeToggle<cr>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>k", "<cmd>NvimTreeFindFile<cr>", {noremap = true, silent = true})
