return {
  "chrisgrieser/nvim-chainsaw",
  config = true,
  keys = {
    {
      "<leader>lv",
      function()
        require("chainsaw").variableLog()
      end,
      desc = "Add Debug Variable Log",
    },
    {
      "<leader>lm",
      function()
        require("chainsaw").messageLog()
      end,
      desc = "Add Debug Message Log",
    },
    {
      "<leader>lb",
      function()
        require("chainsaw").beepLog()
      end,
      desc = "Add Debug Message Log",
    },
  },
}
