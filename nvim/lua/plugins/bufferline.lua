return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  opts = {
    options = {
      pick = {
        alphabet = "asdfghjkl",
      },
      always_show_bufferline = true,
      show_close_icon = false,
      show_buffer_close_icons = false,
    },
  },
  keys = {
    {
      "<C-A-l>",
      function()
        require("bufferline").cycle(1)
      end,
      desc = "Next Buffer",
    },
    {
      "<C-A-h>",
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
