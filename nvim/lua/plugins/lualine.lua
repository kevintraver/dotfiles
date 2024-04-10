return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = {
    sections = {
      lualine_z = {},
    },
    extensions = {
      "lazy",
      "trouble",
      "toggleterm",
      "nvim-tree",
      "quickfix",
      "oil",
      "symbols-outline",
    },
  },
}
