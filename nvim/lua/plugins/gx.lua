return {
  "chrishrb/gx.nvim",
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
