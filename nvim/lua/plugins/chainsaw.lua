return {
  "chrisgrieser/nvim-chainsaw",
  config = true,
  keys = {
    {
      "<leader>lv",
      function()
        require("chainsaw").variableLog()
      end,
      desc = "Toggle Chainsaw Variable Log",
    },
    {
      "<leader>lm",
      function()
        require("chainsaw").messageLog()
      end,
      desc = "Toggle Chainsaw Message Log",
    },
    {
      "<leader>lb",
      function()
        require("chainsaw").beepLog()
      end,
      desc = "Toggle Chainsaw Beep Log",
    },
  },
}
