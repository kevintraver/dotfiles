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
      desc = "Tinygit Commit",
    },
    {
      "<M-a>",
      function()
        require("tinygit").amendNoEdit()
      end,
      desc = "Tinygit Amend",
    },
    {
      "<M-r>",
      function()
        require("tinygit").amendOnlyMsg()
      end,
      desc = "Tinygit Amend Message",
    },
    {
      "<M-p>",
      function()
        require("tinygit").push({})
      end,
      desc = "Git push",
    },
  },
}
