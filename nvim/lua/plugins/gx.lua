return {
  "chrishrb/gx.nvim",
  lazy = true,
  config = true,
  vscode = true,
  opts = {
    handlers = {
      search = false,
    },
  },
  keys = {
    {
      "gx",
      function()
        require("gx").open()
      end,
      desc = "Open Link",
    },
  },
}
