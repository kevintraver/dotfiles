return {
  lazy = true,
  "chrisgrieser/nvim-rip-substitute",
  opts = {
    keymaps = {
      abort = "<esc>",
      insertModeConfirm = "<CR>",
    },
  },
  keys = {
    {
      "<leader>sr",
      mode = { "n", "x" },
      function()
        require("rip-substitute").sub()
      end,
      desc = "Rip Substitute",
    },
  },
}
