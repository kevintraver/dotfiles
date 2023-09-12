-- https://github.com/m4xshen/hardtime.nvim

return {
  "m4xshen/hardtime.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    notification = false,
    max_count = 5,
    disabled_filetypes = {
      "neo-tree",
      "NeogitStatus",
    },
  },
}
