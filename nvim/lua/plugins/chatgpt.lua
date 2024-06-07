return {
  "jackMort/ChatGPT.nvim",
  enabled = false,
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
          "<C-c>",
          "<C-\\>",
          "<A-w>",
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
