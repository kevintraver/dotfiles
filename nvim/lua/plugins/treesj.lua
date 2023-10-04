-- https://github.com/Wansmer/treesj

return {
  "Wansmer/treesj",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = {
    use_default_keymaps = false,
  },

  keys = {
    { "gj", "<cmd>join<cr>", desc = "join" },
    { "gJ", "<cmd>join!<cr>", desc = "join!" },
    {
      "J",
      function()
        require("treesj").toggle()
      end,
      desc = "Toggle split/join",
    },
  },
}
