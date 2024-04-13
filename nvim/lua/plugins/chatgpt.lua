return {
  "jackMort/ChatGPT.nvim",
  lazy = true,
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
      "<C-\\>",
      mode = { "n", "i", "v", "t" },
      function()
        require("chatgpt").openChat()
      end,
      desc = "ChatGPT",
    },
  },
}
