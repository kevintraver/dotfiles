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
      "<leader>gr",
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
        require("tinygit").undo()
      end,
      desc = "Git Undo (mixed)",
    },
  },
}
