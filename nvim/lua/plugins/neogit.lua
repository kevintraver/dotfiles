-- https://github.com/NeogitOrg/neogit

return {
  "NeogitOrg/neogit",
  event = "VeryLazy",
  cond = not vim.g.vscode,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "sindrets/diffview.nvim",
    "ibhagwan/fzf-lua",
  },
  config = function()
    require("neogit").setup()
  end,
}
