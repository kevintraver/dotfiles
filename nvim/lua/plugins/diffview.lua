-- https://github.com/sindrets/diffview.nvim

return {
  "sindrets/diffview.nvim",
  event = "VeryLazy",
  cond = not vim.g.vscode,

  keys = {
    {
      "<leader>gd",
      function()
        require("diffview").open({})
      end,
      desc = "Diff view open",
    },
    {
      "<leader>gh",
      function()
        require("diffview").file_history(nil, { "%" })
      end,
      desc = "Diff view file history",
    },
    {
      "<leader>gq",
      function()
        require("diffview").close()
      end,
      desc = "Diff view close",
    },
  },
}
