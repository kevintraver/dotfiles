return {
  "Wansmer/treesj",
  lazy = true,
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = {
    use_default_keymaps = false,
  },
  keys = {
    {
      "gj",
      function()
        vim.cmd.join()
      end,
      desc = "Join Lines",
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
