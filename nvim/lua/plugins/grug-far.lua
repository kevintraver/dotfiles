return {
  {
    "MagicDuck/grug-far.nvim",
    cmd = "GrugFar",
    opts = {
      keymaps = {
        replace = { n = "R" },
        qflist = { n = "<C-q>" },
        syncLocations = { n = "s" },
        syncLine = { n = "l" },
        close = { n = "q" },
        historyOpen = { n = "o" },
        historyAdd = { n = "a" },
        refresh = { n = "r" },
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
      {
        "<leader>sr",
        false,
      },
    },
  },
}
