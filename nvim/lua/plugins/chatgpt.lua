-- https://github.com/jackMort/ChatGPT.nvim

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
  },
  keys = {
    {
      "\\\\",
      function()
        require("chatgpt").openChat()
      end,
      desc = "ChatGPT",
    },
  },
}
