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
      "p",
      "<Plug>(YankyPutAfterFilter)",
      desc = "Yanky put after (filter)",
    },
    {
      "P",
      "<Plug>(YankyPutBeforeFilter)",
      desc = "Yanky put before (filter)",
    },
    {
      "=p",
      "<Plug>(YankyPutAfter)",
      desc = "Put after (no filter)",
    },
    {
      "=P",
      "<Plug>(YankyPutBefore)",
      desc = "Put before (no filter)",
    },
    {
      "<leader>p",
      false,
    },
  },
}
