return {
  "chrisgrieser/nvim-tinygit",
  lazy = true,
  dev = true,
  dependencies = { "stevearc/dressing.nvim" },
  opts = {
    commitMsg = {
      enforceConvCommits = {
        enabled = false,
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
      "<leader>gu",
      function()
        require("tinygit").undoLastCommit()
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
