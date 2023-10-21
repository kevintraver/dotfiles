return {
  "chrisgrieser/nvim-tinygit",
  event = "VeryLazy",
  dependencies = { "stevearc/dressing.nvim" },
  opts = {
    commitMsg = {
      maxLen = 72,
      mediumLen = 50,
      enforceConvCommits = {
        enabled = false,
      },
    },
  },

  keys = {
    {
      "<leader>gc",
      function()
        require("tinygit").smartCommit()
      end,
      desc = "Commit",
    },
    {
      "<leader>ga",
      function()
        require("tinygit").amendOnlyMsg()
      end,
      desc = "Amend",
    },
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
