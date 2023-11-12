return {
  "chrisgrieser/nvim-tinygit",
  event = "VeryLazy",
  dependencies = { "stevearc/dressing.nvim" },
  opts = {
    commitMsg = {
      enforceConvCommits = {
        enabled = false,
      },
    },
  },

  keys = {
    {
      "<M-c>",
      function()
        require("tinygit").smartCommit()
      end,
      desc = "Commit",
    },
    {
      "<M-a>",
      function()
        require("tinygit").amendOnlyMsg()
      end,
      desc = "Amend",
    },
  },
}
