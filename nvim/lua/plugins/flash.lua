return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {
    modes = {
      char = {
        jump_labels = true,
      },
    },
  },
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
        require("flash").treesitter({
          remote_op = {
            restore = true,
          },
        })
      end,
      desc = "Flash Treesitter",
    },
    {
      "<C-s>",
      mode = { "n" },
      function()
        require("flash").jump({ continue = true })
      end,
      desc = "Flash Continue",
    },
    {
      "r",
      mode = { "o" },
      false,
    },
    {
      "r",
      mode = { "o", "x" },
      function()
        require("flash").treesitter_search({
          remote_op = {
            restore = true,
          },
        })
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
