return {
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
      "<leader>rg",
      function()
        require("grug-far").grug_far()
      end,
      desc = "Grug Far",
    },
  },
}
