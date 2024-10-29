return {
  "SuperBo/fugit2.nvim",
  enabled = true,
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  lazy = true,
  opts = {
    width = 70,
    external_diffview = true,
  },
  cmd = { "Fugit2", "Fugit2Diff", "Fugit2Graph" },
  keys = {},
}
