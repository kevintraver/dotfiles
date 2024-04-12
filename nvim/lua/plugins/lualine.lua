return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = {
    sections = {
      lualine_z = {},
    },
    extensions = {
      "lazy",
      "toggleterm",
      "nvim-tree",
      "quickfix",
      "oil",
      "symbols-outline",
    },
  },
}
