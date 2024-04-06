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
      "<A-p>",
      mode = { "n" },
      function()
        local yanky_wrappers = require("yanky.wrappers")
        require("yanky").put("p", false, yanky_wrappers.linewise(yanky_wrappers.change("==")))
      end,
      desc = "Yanky Put After Filter",
    },
    {
      "<S-A-p>",
      mode = { "n" },
      function()
        local yanky_wrappers = require("yanky.wrappers")
        require("yanky").put("P", false, yanky_wrappers.linewise(yanky_wrappers.change("==")))
      end,
      desc = "Yanky Put Before Filter",
    },
  },
}
