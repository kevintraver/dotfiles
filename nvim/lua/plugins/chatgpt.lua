return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  opts = {
    yank_register = '"',
    chat = {
      keymaps = {
        close = {
          "q",
          "<C-c>",
          "<C-Space>",
        },
      },
    },
  },
  keys = {
    {
      "<C-Space>",
      mode = { "n", "i", "v", "t" },
      function()
        require("chatgpt").openChat()
      end,
      desc = "ChatGPT",
    },
  },
}
