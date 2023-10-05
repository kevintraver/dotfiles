return {
  "axieax/urlview.nvim",
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
