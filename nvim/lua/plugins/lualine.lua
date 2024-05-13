return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = {
    sections = {
      lualine_b = {},
      lualine_y = {
        {
          "git_prompt_string",
          prompt_config = {
            color_disabled = true,
          },
        },
      },
      lualine_z = {
        "location",
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
