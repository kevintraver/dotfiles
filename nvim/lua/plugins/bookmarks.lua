-- https://github.com/tomasky/bookmarks.nvim

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
  config = function()
    require("bookmarks").setup({
      keymap = {
        toggle = "<leader>bt",
        add = "<leader>ba",
      },
    })
  end,
  keys = {
    {
      "<leader>bt",
      desc = "Toggle Bookmarks",
    },
  },
}
