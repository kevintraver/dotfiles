-- https://github.com/sindrets/diffview.nvim

return {
  "sindrets/diffview.nvim",
  cond = not vim.g.vscode,
  event = "VeryLazy",

  keys = {
    {
      "<leader>gd",
      function()
        require("diffview").open({})
      end,
      desc = "Diff view open",
    },
    {
      "<D-d>",
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
      "<leader>gl",
      function()
        require("diffview").file_history(nil, {})
      end,
      desc = "Diff view history",
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
