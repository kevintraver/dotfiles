return {
  "nvim-neotest/neotest",
  keys = {
    {
      "<leader>tr",
      function()
        require("neotest").run.run()
      end,
      desc = "Run tests",
    },
    {
      "<leader>tt",
      function()
        require("neotest").summary.toggle()
      end,
      desc = "Watch Tests",
    },
  },
}
