-- https://github.com/crusj/bookmarks.nvim

return {
  "crusj/bookmarks.nvim",
  cond = not vim.g.vscode,
  dependencies = {
    {
      "nvim-telescope/telescope.nvim",
      config = function()
        require("telescope").load_extension("bookmarks")
      end,
    },
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
