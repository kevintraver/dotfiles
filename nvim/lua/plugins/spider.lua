return {
  "chrisgrieser/nvim-spider",
  lazy = true,
  keys = {
    {
      "w",
      function()
        require("spider").motion("w")
      end,
      desc = "Spider-w",
    },
    {
      "e",
      function()
        require("spider").motion("e")
      end,
      desc = "Spider-e",
    },
    {
      "b",
      function()
        require("spider").motion("b")
      end,
      desc = "Spider-b",
    },
    {
      "ge",
      function()
        require("spider").motion("ge")
      end,
      desc = "Spider-ge",
    },
  },
}
