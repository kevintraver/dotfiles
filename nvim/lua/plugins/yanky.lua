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
          default = require("yanky.telescope.mapping").put_and_set_register(
            "p",
            '"'
          ),
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
