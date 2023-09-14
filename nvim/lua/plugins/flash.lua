-- https://github.com/folke/flash.nvim

return {
  "folke/flash.nvim",
  keys = {
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
      "<C-s>",
      mode = { "n", "o", "x" },
      function()
        require("flash").treesitter_search()
      end,
      desc = "Flash Treesitter",
    },
    {
      "S",
      mode = { "n", "x", "o" },
      function()
        require("flash").jump()
      end,
      desc = "Flash",
    },
    {
      "<leader>j",
      mode = { "n", "o", "x" },
      function()
        require("flash").jump({
          search = { mode = "search", max_length = 0 },
          label = { after = { 0, 0 } },
          pattern = "^",
        })
      end,
    },
  },
}
