return {
  "akinsho/bufferline.nvim",
  event = "ColorScheme",
  config = function()
    require("bufferline").setup({
      highlights = require("rose-pine.plugins.bufferline"),
      options = {
        always_show_bufferline = true,
        show_close_icon = false,
        show_buffer_close_icons = false,
      },
    })
  end,
  keys = {
    {
      "<S-A-l>",
      function()
        require("bufferline").cycle(1)
      end,
      desc = "Next Buffer",
    },
    {
      "<S-A-h>",
      function()
        require("bufferline").cycle(-1)
      end,
      desc = "Previous Buffer",
    },
    {
      "<leader>bp",
      function()
        require("bufferline").pick()
      end,
      desc = "Pick Buffer",
    },
    {
      "<S-l>",
      false,
    },
    {
      "<S-h>",
      false,
    },
    {
      "<leader>br",
      false,
    },
    {
      "<leader>bl",
      false,
    },
  },
}
