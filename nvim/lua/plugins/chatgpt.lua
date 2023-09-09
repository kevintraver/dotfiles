-- https://github.com/jackMort/ChatGPT.nvim

return {
  "jackMort/ChatGPT.nvim",
  enabled = false,
  event = "VeryLazy",
  cond = not vim.g.vscode,
  config = function()
    require("chatgpt").setup()
  end,
  requires = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
}
