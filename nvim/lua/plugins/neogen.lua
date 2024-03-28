return {
  "danymat/neogen",
  lazy = true,
  config = true,
  keys = {
    {
      "<leader>n",
      function()
        require("neogen").generate()
      end,
      desc = "Neogen",
    },
  },
}
