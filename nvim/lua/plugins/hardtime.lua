return {
  "m4xshen/hardtime.nvim",
  event = "VeryLazy",
  vscode = true,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    notification = false,
    max_count = 3,
  },
}
