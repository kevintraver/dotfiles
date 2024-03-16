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
    push = {
      confirmationSound = false,
    },
  },
  keys = {
    {
      "<M-c>",
      function()
        require("tinygit").smartCommit()
      end,
      desc = "Git Commit",
    },
    {
      "<M-a>",
      function()
        require("tinygit").amendNoEdit()
      end,
      desc = "Git Amend Commit",
    },
    {
      "<M-r>",
      function()
        require("tinygit").amendOnlyMsg()
      end,
      desc = "Git Amend Message",
    },
    {
      "<M-p>",
      function()
        require("tinygit").push({})
      end,
      desc = "Git Push",
    },
  },
}
