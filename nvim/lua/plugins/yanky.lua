return {
  "gbprod/yanky.nvim",
  event = "LazyFile",
  opts = {
    highlight = {
      timer = 300,
    },
    system_clipboard = {
      sync_with_ring = false,
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
        require("yanky").put(
          "p",
          false,
          yanky_wrappers.linewise(yanky_wrappers.change("=="))
        )
      end,
      desc = "Yanky Put After Filter",
    },
    {
      "<S-A-p>",
      mode = { "n" },
      function()
        local yanky_wrappers = require("yanky.wrappers")
        require("yanky").put(
          "P",
          false,
          yanky_wrappers.linewise(yanky_wrappers.change("=="))
        )
      end,
      desc = "Yanky Put Before Filter",
    },
    {
      "<C-A-p>",
      mode = { "n" },
      function()
        local yanky_wrappers = require("yanky.wrappers")
        require("yanky").put(
          "P",
          false,
          yanky_wrappers.linewise(yanky_wrappers.change("=="))
        )
      end,
      desc = "Yanky Put Before Filter",
    },
    {
      "<A-p>",
      mode = { "i" },
      function()
        require("yanky").put("p", false)
      end,
      desc = "Yanky Put After",
    },
    {
      "<S-A-p>",
      mode = { "i" },
      function()
        require("yanky").put("P", false)
      end,
      desc = "Yanky Put Before",
    },
    {
      "[p",
      mode = { "n" },
      function()
        require("yanky").cycle(1)
      end,
      desc = "Yanky Cycle Forward",
    },
    {
      "]p",
      mode = { "n" },
      function()
        require("yanky").cycle(-1)
      end,
      desc = "Yanky Cycle Backward",
    },
    {
      "<A-y>",
      mode = { "n" },
      function()
        require("telescope").extensions.yank_history.yank_history({})
      end,
      desc = "Yank History",
    },
    {
      "<leader>p",
      false,
    },
  },
}
