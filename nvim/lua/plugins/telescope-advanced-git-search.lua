return {
  "aaronhallaert/advanced-git-search.nvim",
  cmd = "AdvancedGitSearch",
  lazy = true,
  config = function()
    require("telescope").setup({
      extensions = {
        advanced_git_search = {
          diff_plugin = "diffview",
          git_flags = { "--no-pager" },
        },
      },
    })
    require("telescope").load_extension("advanced_git_search")
  end,
  keys = {
    {
      "<leader>ghl",
      function()
        require("telescope").extensions.advanced_git_search.search_log_content()
      end,
      desc = "Git Search (Log)",
    },
    {
      "<leader>ghf",
      function()
        require("telescope").extensions.advanced_git_search.search_log_content_file()
      end,
      desc = "Git Search (File)",
    },
  },
}
