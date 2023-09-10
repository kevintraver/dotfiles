-- https://github.com/jackMort/ChatGPT.nvim

return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  cond = not vim.g.vscode,
  config = function()
    require("chatgpt").setup({
      yank_register = '"',
    })
  end,
  requires = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
}
