return {
  "danymat/neogen",
  lazy = true,
  config = true,
  keys = {
    {
      "<leader>a",
      function()
        require("neogen").generate()
      end,
      desc = "Neogen",
    },
  },
}
