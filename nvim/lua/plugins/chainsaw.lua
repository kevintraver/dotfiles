return {
  "chrisgrieser/nvim-chainsaw",
  config = true,
  keys = {
    {
      "<leader>dv",
      function()
        require("chainsaw").variableLog()
      end,
      desc = "Add Debug Variable Log",
    },
    {
      "<leader>dm",
      function()
        require("chainsaw").messageLog()
      end,
      desc = "Add Debug Message Log",
    },
    {
      "<leader>db",
      function()
        require("chainsaw").beepLog()
      end,
      desc = "Add Beep Message Log",
    },
  },
}
