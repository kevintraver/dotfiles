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
      "<A-C-l>",
      function()
        require("bufferline").cycle(1)
      end,
      desc = "Next Buffer",
    },
    {
      "<A-C-h>",
      function()
        require("bufferline").cycle(-1)
      end,
      desc = "Previous Buffer",
    },
    {
      "<C-Space>",
      function()
        vim.cmd.buffer("#")
      end,
      desc = "Switch to Other Buffer",
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
  },
}
