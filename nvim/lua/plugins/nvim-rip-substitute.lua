return {
  lazy = true,
  "chrisgrieser/nvim-rip-substitute",
  keys = {
    {
      "<leader>rr",
      mode = { "n", "x" },
      function()
        require("rip-substitute").sub()
      end,
      desc = "Rip Substitute",
    },
  },
}
