-- https://github.com/folke/flash.nvim

return {
  "folke/flash.nvim",
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
      mode = "o",
      false,
      desc = "Remote Flash",
    },
    {
      "r",
      mode = { "o", "x" },
      function()
        require("flash").treesitter_search()
      end,
      desc = "Treesitter Search",
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
