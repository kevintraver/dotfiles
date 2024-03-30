return {
  "f-person/git-blame.nvim",
  lazy = true,
  opts = {
    enabled = false,
  },
  keys = {
    {
      "<leader>gzt",
      function()
        require("gitblame").toggle()
      end,
      desc = "Toggle Git Blame",
    },
    {
      "<leader>gzo",
      function()
        require("gitblame").open_commit_url()
      end,
      desc = "Open Commit URL",
    },
    {
      "<leader>gzc",
      function()
        require("gitblame").copy_sha_to_clipboard()
      end,
      desc = "Copy Commit SHA to Clipboard",
    },
  },
}
