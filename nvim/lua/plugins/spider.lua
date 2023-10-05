return {
  "chrisgrieser/nvim-spider",
  event = "VeryLazy",
  keys = {
    {
      "w",
      mode = { "n", "x" },
      function()
        require("spider").motion("w")
      end,
      desc = "Spider-w",
    },
    {
      "e",
      mode = { "n", "x" },
      function()
        require("spider").motion("e")
      end,
      desc = "Spider-e",
    },
    {
      "b",
      mode = { "n", "x" },
      function()
        require("spider").motion("b")
      end,
      desc = "Spider-b",
    },
    {
      "ge",
      mode = { "n", "x" },
      function()
        require("spider").motion("ge")
      end,
      desc = "Spider-ge",
    },
  },
}
