return {
  "folke/flash.nvim",
  opts = {},
  keys = {
    {
      "<space>",
      mode = { "n", "x" },
      function()
        require("flash").jump()
      end,
      desc = "Flash",
    },
    {
      "<space>",
      mode = { "o" },
      function()
        require("flash").jump({ jump = { inclusive = false } })
      end,
      desc = "Flash",
    },
  },
}
