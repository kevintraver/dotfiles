return {
  "linrongbin16/gitlinker.nvim",
  lazy = true,
  config = true,
  keys = {
    {
      "<leader>gy",
      mode = { "n", "v" },
      function()
        require("gitlinker").link()
      end,
      desc = "Copy Git Url",
    },
    {
      "<leader>yg",
      mode = { "n", "v" },
      function()
        require("gitlinker").link()
      end,
      desc = "Copy Git Url",
    },
    {
      "<leader>go",
      mode = { "n", "v" },
      function()
        require("gitlinker").link({
          action = require("gitlinker.actions").system,
        })
      end,
      desc = "Open Git Url",
    },
  },
}
