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
  }
})

vim.api.nvim_set_keymap("n", "<leader>/", "<cmd>NvimTreeFindFile<cr>", {noremap = true, silent = true})
