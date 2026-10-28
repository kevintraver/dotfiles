return {
  "chrishrb/gx.nvim",
  lazy = true,
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
