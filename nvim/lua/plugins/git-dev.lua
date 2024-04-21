return {
  "moyiz/git-dev.nvim",
  event = "VeryLazy",
  opts = {
    repositories_dir = vim.fn.stdpath("data") .. "/git-dev",
    ephemeral = false,
    read_only = false,
  },
  keys = {
    {
      "<leader>gr",
      function()
        vim.ui.input({ prompt = "Repository name / URI: " }, function(input)
          if not input or input == "" then
            return
          end
          require("git-dev").open(input)
        end)
      end,
      desc = "Open a remote git repository",
    },
  },
}
