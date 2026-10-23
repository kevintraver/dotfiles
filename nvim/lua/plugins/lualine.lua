return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = {
    sections = {
      lualine_x = {},
    },
    extensions = {
      "lazy",
      "toggleterm",
      "nvim-tree",
      "quickfix",
      "oil",
      "neo-tree",
      "mason",
      "trouble",
      "overseer",
      "symbols-outline",
    },
  },
}
