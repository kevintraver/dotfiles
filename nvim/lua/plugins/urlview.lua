-- https://github.com/axieax/urlview.nvim

return {
  "axieax/urlview.nvim",
  cond = not vim.g.vscode,
  event = "VeryLazy",
  opts = {
    default_picker = "telescope",
    default_action = "clipboard",
  },
  keys = {
    {
      "<leader>su",
      function()
        vim.cmd.UrlView()
      end,
      desc = "UrlView U",
    },
  },
}
