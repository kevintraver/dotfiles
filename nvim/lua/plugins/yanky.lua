-- https://github.com/gbprod/yanky.nvim

return {
  "gbprod/yanky.nvim",
  opts = {
    highlight = {
      timer = 400,
    },
    preserve_cursor_position = {
      enabled = true,
    },
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
      function()
        require("yanky").yank({ register = "+" })
      end,
      desc = "Yank to global clipboard",
    },
    {
      "lp",
      mode = { "n", "x" },
      function()
        require("yanky.textobj").last_put()
        require("yanky.textobj").last_put()
      end,
      desc = "Last Put",
    },
  },
}
