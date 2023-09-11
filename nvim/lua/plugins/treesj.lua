-- https://github.com/Wansmer/treesj

return {
  "Wansmer/treesj",
  event = "VeryLazy",
  dependencies = { "nvim-treesitter/nvim-treesitter" },

  opts = {
    use_default_keymaps = false,
  },

  keys = {
    {
      "gj",
      ":join<CR>",
      desc = "Join with spaces",
    },
    {
      "gJ",
      ":join!<CR>",
      desc = "Join without spaces",
    },
    {
      "J",
      function()
        require("treesj").toggle()
      end,
      desc = "Toggle split/join",
    },
  },
}
