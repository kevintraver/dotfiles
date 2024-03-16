return {
  "chrisgrieser/nvim-tinygit",
  lazy = true,
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
      desc = "Tinygit Commit",
    },
    {
      "<M-a>",
      function()
        require("tinygit").amendOnlyMsg()
      end,
      desc = "Tinygit Amend",
    },
  },
}
