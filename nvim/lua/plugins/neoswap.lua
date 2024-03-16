return {
  "ecthelionvi/neoswap.nvim",
  lazy = true,
  config = true,
  keys = {
    {
      "<A-h>",
      function()
        require("NeoSwap").swap_prev()
      end,
      desc = "Swap Previous Word",
    },
    {
      "<A-l>",
      function()
        require("NeoSwap").swap_next()
      end,
      desc = "Swap Next Word",
    },
  },
}
