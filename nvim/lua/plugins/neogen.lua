return {
  "danymat/neogen",
  lazy = true,
  config = true,
  keys = {
    {
      "<leader>aa",
      function()
        require("neogen").generate()
      end,
      desc = "Neogen",
    },
  },
}
