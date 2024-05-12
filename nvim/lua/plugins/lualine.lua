return {
  "nvim-lualine/lualine.nvim",
  event = "ColorScheme",
  opts = {
    options = {
      theme = "rose-pine",
    },
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
      "symbols-outline",
    },
  },
}
