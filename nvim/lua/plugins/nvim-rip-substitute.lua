return {
  lazy = true,
  "chrisgrieser/nvim-rip-substitute",
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
