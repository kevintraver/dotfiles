return {
  "akinsho/git-conflict.nvim",
  lazy = true,
  cmd = { "GitConflictListQf" },
  opts = {
    default_mappings = {
      ours = "<leader>gro",
      theirs = "<leader>grt",
      none = "<leader>grx",
      both = "<leader>grb",
      next = "<leader>grn",
      prev = "<leader>grp",
    },
  },
}
