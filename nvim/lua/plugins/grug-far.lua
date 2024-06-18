return {
  {
    "MagicDuck/grug-far.nvim",
    cmd = "GrugFar",
    opts = {
      keymaps = {
        replace = { n = "R" },
        qflist = { n = "q" },
        syncLocations = { n = "s" },
        syncLine = { n = "l" },
        close = { n = "q" },
        historyOpen = { n = "t" },
        historyAdd = { n = "a" },
        refresh = { n = "f" },
        gotoLocation = { n = "<enter>" },
        pickHistoryEntry = { n = "<enter>" },
      },
    },
    keys = {
      {
        "<leader>fr",
        function()
          require("grug-far").grug_far()
        end,
        desc = "Grug Far",
      },
    },
  },
  {
    "folke/edgy.nvim",
    optional = true,
    opts = function(_, opts)
      table.insert(opts.right, {
        ft = "grug-far",
        title = "Grug",
        size = { width = 0.5 },
      })
    end,
  },
  {
    "nvim-pack/nvim-spectre",
    enabled = false,
  },
  {
    "nvim-telescope/telescope.nvim",
    optional = true,
    keys = {
      {
        "<leader>fr",
        false,
      },
    },
  },
}
