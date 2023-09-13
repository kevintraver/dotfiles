-- https://github.com/folke/flash.nvim

return {
  "folke/flash.nvim",
  keys = {
    {
      "<C-s>",
      mode = { "n", "o", "x" },
      function()
        require("flash").treesitter()
      end,
      desc = "Flash Treesitter",
    },
    {
      mode = { "n", "o", "x" },
      "<leader>j",
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
