return {
  "chrisgrieser/nvim-spider",
  lazy = true,
  opts = {
    consistentOperatorPending = true,
  },
  keys = {
    {
      "w",
      mode = { "n", "v", "o" },
      function()
        require("spider").motion("w")
      end,
      desc = "Spider-w",
    },
    {
      mode = { "n", "v", "o" },
      "e",
      function()
        require("spider").motion("e")
      end,
      desc = "Spider-e",
    },
    {
      mode = { "n", "v", "o" },
      "b",
      function()
        require("spider").motion("b")
      end,
      desc = "Spider-b",
    },
    {
      mode = { "n", "v", "o" },
      "ge",
      function()
        require("spider").motion("ge")
      end,
      desc = "Spider-ge",
    },
  },
}
