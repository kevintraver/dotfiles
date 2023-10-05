return {
  "KaitlynEthylia/TreePin",
  event = "VeryLazy",
  opts = {},
  keys = {
    {
      "<leader>tp",
      function()
        require("treepin").pinLocal()
      end,
      desc = "Pin Node",
    },
    {
      "<leader>tg",
      function()
        require("treepin").pinGo()
      end,
      desc = "Go To Pin",
    },
  },
}
