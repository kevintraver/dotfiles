-- https://github.com/crusj/bookmarks.nvim

return {
  "crusj/bookmarks.nvim",
  event = "VeryLazy",
  cond = not vim.g.vscode,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    keymap = {
      toggle = "<leader>bt",
      add = "<leader>ba",
    },
  },
  keys = {
    {
      "<leader>bt",
      desc = "Toggle Bookmarks",
    },
  },
}
