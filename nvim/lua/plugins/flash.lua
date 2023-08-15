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

    {
      "j",
      mode = { "o", "x" },
      function()
        require("flash").jump({
          search = { mode = "search", max_length = 0 },
          label = { after = { 0, 0 } },
          pattern = "^",
        })
      end,
      desc = "Flash",
    },
  },
}
