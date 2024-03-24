return {
  "paopaol/telescope-git-diffs.nvim",
  lazy = true,
  config = function()
    require("telescope").load_extension("git_diffs")
  end,
  keys = {
    {
      "<leader>gL",
      function()
        require("telescope").extensions.git_diffs.diff_commits()
      end,
      desc = "Git Diff Commits",
    },
  },
}
