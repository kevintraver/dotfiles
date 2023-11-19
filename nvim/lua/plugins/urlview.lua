return {
  "axieax/urlview.nvim",
  lazy = true,
  opts = {
    default_picker = "telescope",
    default_action = "clipboard",
    default_register = '"',
  },
  keys = {
    {
      "<leader>su",
      function()
        require("urlview").search("buffer", {})
      end,
      desc = "UrlView",
    },
  },
}
