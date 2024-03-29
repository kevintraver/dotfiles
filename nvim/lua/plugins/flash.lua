return {
  "folke/flash.nvim",
  dev = true,
  event = "VeryLazy",
  keys = {
    {
      "s",
      mode = { "n", "x", "o" },
      false,
    },
    {
      "s",
      mode = { "n" },
      function()
        require("flash").jump()
      end,
      desc = "Flash",
    },
    {
      "s",
      mode = { "o", "x" },
      function()
        require("flash").treesitter()
      end,
      desc = "Flash Treesitter",
    },
    {
      "r",
      mode = { "o" },
      false,
      desc = "Flash Remote",
    },
    {
      "r",
      mode = { "o", "x" },
      function()
        require("flash").treesitter_search()
      end,
      desc = "Flash Treesitter",
    },
    {
      "S",
      mode = { "n", "o", "x" },
      function()
        require("flash").jump()
      end,
      desc = "Flash",
    },
    {
      "R",
      mode = { "o" },
      function()
        require("flash").remote()
      end,
      desc = "Remote Flash",
    },
    {
      "<leader>j",
      mode = { "n", "o", "x" },
      function()
        require("flash").jump({
          search = {
            mode = "search",
            max_length = 0,
          },
          label = {
            after = { 0, 0 },
          },
          pattern = "^",
        })
      end,
      desc = "Flash Jump (Line)",
    },
  },
}
