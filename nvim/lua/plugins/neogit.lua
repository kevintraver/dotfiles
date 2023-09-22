-- https://github.com/NeogitOrg/neogit

return {
  "NeogitOrg/neogit",
  cond = not vim.g.vscode,
  event = "VeryLazy",
  cmd = "Neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "sindrets/diffview.nvim",
  },
  opts = {
    integrations = {
      diffview = true,
    },
  },
  keys = {
    {
      "<A-g>",
      function()
        require("neogit").open()
      end,
      desc = "Neogit Open",
    },
    {
      "<leader>gc",
      function()
        require("neogit").open({ "commit" })
      end,
      desc = "Neogit Open",
    },
  },
}
