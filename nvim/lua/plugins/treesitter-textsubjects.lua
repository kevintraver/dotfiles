return {
  "RRethy/nvim-treesitter-textsubjects",
  event = "VeryLazy",
  config = function()
    require("nvim-treesitter.configs").setup({
      textsubjects = {
        enable = true,
        keymaps = {
          ["."] = "textsubjects-smart",
          ["y"] = "textsubjects-smart",
          ["<Space>"] = "textsubjects-smart",
        },
      },
    })
  end,
}
