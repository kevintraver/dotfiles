return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  opts = {
    options = {
      always_show_bufferline = true,
      show_close_icon = false,
      show_buffer_close_icons = false,
    },
  },
  keys = {
    {
      "<S-l>",
      false,
    },
    {
      "<S-h>",
      false,
    },
  },
}
