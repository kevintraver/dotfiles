return {
  "KaitlynEthylia/TreePin",
  event = "VeryLazy",
  config = true,
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
