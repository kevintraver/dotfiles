return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = {
    sections = {
      lualine_b = {
        {
          "git_prompt_string",
          prompt_config = {
            color_disabled = true,
          },
        },
      },
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
