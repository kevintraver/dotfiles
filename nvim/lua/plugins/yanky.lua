return {
  "gbprod/yanky.nvim",
  lazy = true,
  opts = {
    system_clipboard = {
      sync_with_ring = false,
    },
    picker = {
      telescope = {
        mappings = {
          default = require("yanky.telescope.mapping").put_and_set_register("p", '"'),
        },
      },
    },
  },
  keys = {
    {
      "Y",
      mode = { "n", "x" },
      [["+<Plug>(YankyYank)]],
      desc = "Yank to Global Clipboard",
    },
    {
      "<C-p>",
      mode = { "n" },
      function()
        require("yanky").cycle(1)
      end,
      desc = "Yanky Cycle Forward",
    },
    {
      "<C-n>",
      mode = { "n" },
      function()
        require("yanky").cycle(-1)
      end,
      desc = "Yanky Cycle Backward",
    },
  },
}
