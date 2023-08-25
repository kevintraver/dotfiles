-- https://github.com/folke/flash.nvim

return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {
    search = {
      mode = "exact",
      multi_window = false,
    },
  },
  keys = {
    {
      "<Space>",
      mode = { "n", "x" },
      function()
        require("flash").jump()
      end,
      desc = "Flash (normal, visual)",
    },
    {
      "<Space>",
      mode = { "o" },
      function()
        require("flash").jump({ jump = { inclusive = false } })
      end,
      desc = "Flash (operator)",
    },
    {
      "<C-Space>",
      mode = { "n", "o", "x" },
      function()
        require("flash").treesitter()
      end,
      desc = "Flash (treesitter)",
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
