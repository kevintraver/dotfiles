return {
  "jackMort/ChatGPT.nvim",
  cond = not vim.g.vscode,
  event = "VeryLazy",
  requires = {
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
