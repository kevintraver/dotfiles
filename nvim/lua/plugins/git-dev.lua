return {
  "moyiz/git-dev.nvim",
  lazy = true,
  opts = {
    repositories_dir = vim.fn.stdpath("data") .. "/git-dev",
    ephemeral = false,
    read_only = false,
    git = {
      clone_args = "",
      fetch_args = "",
    },
    opener = function(dir)
      require("oil").open(dir)
      vim.api.nvim_set_current_dir(dir)
    end,
  },
  keys = {
    {
      "<leader>gd",
      function()
        vim.ui.input({ prompt = "Repository name / URI" }, function(url)
          if not url or url == "" then
            return
          end
          require("git-dev").open(url)
        end)
      end,
      desc = "Open a remote git repository",
    },
  },
}
