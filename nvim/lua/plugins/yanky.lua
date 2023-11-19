return {
  "gbprod/yanky.nvim",
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
      desc = "Yank to global clipboard",
    },
    {
      "<leader>p",
      "<Plug>(YankyPutAfterFilter)",
      desc = "Yanky put after (filter)",
    },
    {
      "<leader>P",
      "<Plug>(YankyPutBeforeFilter)",
      desc = "Yanky put before (filter)",
    },
    {
      "<D-y>",
      function()
        require("telescope").extensions.yank_history.yank_history({})
      end,
      desc = "Yank History",
    },
    {
      "<D-p>",
      function()
        require("telescope").extensions.yank_history.yank_history({})
      end,
      desc = "Yank History",
    },
    {
      "<leader>sp",
      function()
        require("telescope").extensions.yank_history.yank_history({})
      end,
      desc = "Yank History",
    },
  },
}
