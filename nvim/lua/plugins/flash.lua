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
  },
}
