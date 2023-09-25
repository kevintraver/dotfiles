-- https://github.com/chrisgrieser/nvim-tinygit

return {
  "chrisgrieser/nvim-tinygit",
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
      desc = "Git Commit",
    },
  },
}
