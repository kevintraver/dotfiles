-- https://github.com/sindrets/diffview.nvim

return {
  "sindrets/diffview.nvim",
  event = "VeryLazy",
  cond = not vim.g.vscode,

  keys = {
    {
      "<leader>gd",
      "<cmd>DiffviewOpen<cr>",
      desc = "Diff view open",
    },
    {
      "<leader>gh",
      "<cmd>DiffviewFileHistory %<CR>",
      desc = "Diff view file history",
    },
    {
      "<leader>gq",
      "<cmd>DiffviewClose<CR>",
      desc = "Diff view close",
    },
  },
}
