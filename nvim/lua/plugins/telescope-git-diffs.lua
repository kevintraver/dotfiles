return {
  "paopaol/telescope-git-diffs.nvim",
  lazy = true,
  config = function()
    require("telescope").load_extension("git_diffs")
  end,
}
