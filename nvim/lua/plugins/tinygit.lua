return {
  "chrisgrieser/nvim-tinygit",
  lazy = true,
  dependencies = { "stevearc/dressing.nvim" },
  opts = {
    appearance = {
      backdrop = {
        enabled = false,
      },
    },
    commit = {
      conventionalCommits = {
        enforce = false,
      },
    },
    push = {
      confirmationSound = false,
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
    {
      "<leader>ga",
      function()
        require("tinygit").amendNoEdit()
      end,
      desc = "Git Amend Commit",
    },
    {
      "<leader>ge",
      function()
        require("tinygit").amendOnlyMsg()
      end,
      desc = "Git Amend Message",
    },
    {
      "<leader>gp",
      function()
        require("tinygit").push({})
      end,
      desc = "Git Push",
    },
    {
      "<leader>gP",
      function()
        require("tinygit").push({
          forceWithLease = true,
        })
      end,
      desc = "Git Push (Force)",
    },
    {
      "<leader>gr",
      function()
        require("tinygit").push({
          createGitHubPr = true,
        })
      end,
      desc = "Git Push (with PR)",
    },
    {
      "<leader>gu",
      function()
        require("tinygit").undoLastCommitOrAmend()
      end,
      desc = "Git Undo Last Commit",
    },
    {
      "<leader>gf",
      function()
        require("tinygit").fixupCommit({
          selectFromLastXCommits = 15,
          squashInstead = false,
          autoRebase = false,
        })
      end,
      desc = "Git Fixup",
    },
  },
}
