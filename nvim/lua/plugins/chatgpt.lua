-- https://github.com/jackMort/ChatGPT.nvim

return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  cond = not vim.g.vscode,
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
      "<leader><space>",
      function()
        require("chatgpt").openChat()
      end,
      desc = "ChatGPT",
    },
  },
}
