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
      desc = "Flash (normal, visual)",
    },
    {
      "<space>",
      mode = { "o" },
      function()
        require("flash").jump({ jump = { inclusive = false } })
      end,
      desc = "Flash (operator)",
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
      desc = "Flash (line)",
    },
  },
}
