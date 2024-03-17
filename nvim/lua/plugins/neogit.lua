return {
  "NeogitOrg/neogit",
  lazy = true,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "sindrets/diffview.nvim",
  },
  opts = {
    integrations = {
      telescope = true,
      diffview = true,
    },
    status = {
      recent_commit_count = 20,
    },
  },
  keys = {
    {
      "<leader>gn",
      function()
        require("neogit").open({ kind = "split" })
      end,
      desc = "Neogit Open",
    },
    {
      "<leader>gC",
      function()
        require("neogit").open({ "commit" })
      end,
      desc = "Neogit Open",
    },
  },
}
