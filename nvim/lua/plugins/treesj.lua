return {
  "Wansmer/treesj",
  lazy = true,
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = {
    use_default_keymaps = false,
  },
  keys = {
    {
      "gJ",
      function()
        vim.cmd.join()
      end,
      desc = "Join Lines",
    },
    {
      "gj",
      function()
        require("treesj").toggle()
      end,
      desc = "Toggle Split/Join",
    },
  },
}
