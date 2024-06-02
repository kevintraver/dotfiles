return {
  {
    "NeogitOrg/neogit",
    lazy = true,
    branch = "nightly",
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
  },
  {
    "folke/edgy.nvim",
    optional = true,
    opts = function(_, opts)
      table.insert(opts.bottom, {
        ft = "NeogitStatus",
        size = { height = 0.6 },
      })
      table.insert(opts.bottom, {
        ft = "NeogitPopup",
        size = { height = 0.4 },
      })
      table.insert(opts.bottom, {
        ft = "NeogitCommitMessage",
        size = { height = 0.4 },
      })
      table.insert(opts.bottom, {
        ft = "NeogitCommitView",
        size = { height = 0.4 },
      })
    end,
  },
}
