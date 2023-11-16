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
        close = { "<C-c>", "<D-\\>" },
      },
    },
  },
  keys = {
    {
      "<D-\\>",
      mode = { "n", "v", "t" },
      function()
        require("chatgpt").openChat()
      end,
      desc = "ChatGPT",
    },
  },
}
