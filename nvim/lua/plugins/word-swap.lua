return {
  "kevintraver/word-swap.nvim",
  enabled = false,
  lazy = true,
  config = true,
  keys = {
    {
      "<S-A-l>",
      function()
        require("NeoSwap").swap_next()
      end,
      desc = "Swap Word Right",
    },
    {
      "<S-A-h>",
      function()
        require("NeoSwap").swap_prev()
      end,
      desc = "Swap Word Left",
    },
  },
}
