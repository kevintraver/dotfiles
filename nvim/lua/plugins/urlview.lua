-- https://github.com/axieax/urlview.nvim

return {
  "kevintraver/urlview.nvim",
  cond = not vim.g.vscode,
  dev = true,
  event = "VeryLazy",
  opts = {
    default_picker = "telescope",
    default_action = "clipboard",
    default_register = '"',
  },
  keys = {
    {
      "<leader>su",
      function()
        vim.cmd.UrlView()
      end,
      desc = "UrlView",
    },
  },
}
