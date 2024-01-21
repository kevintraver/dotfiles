return {
  "chrishrb/gx.nvim",
  lazy = true,
  config = true,
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
