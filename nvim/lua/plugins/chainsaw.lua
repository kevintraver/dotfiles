return {
  "chrisgrieser/nvim-chainsaw",
  lazy = true,
  config = true,
  keys = {
    {
      "<leader>dv",
      function()
        require("chainsaw").variableLog()
      end,
      desc = "Add Variable Log",
    },
    {
      "<leader>do",
      function()
        require("chainsaw").objectLog()
      end,
      desc = "Add Object Log",
    },
    {
      "<leader>da",
      function()
        require("chainsaw").assertLog()
      end,
      desc = "Add Assert Log",
    },
    {
      "<leader>dm",
      function()
        require("chainsaw").messageLog()
      end,
      desc = "Add Message Log",
    },
    {
      "<leader>ds",
      function()
        require("chainsaw").stracktraceLog()
      end,
      desc = "Add Stacktrace",
    },
    {
      "<leader>db",
      function()
        require("chainsaw").beepLog()
      end,
      desc = "Add Beep Log",
    },
    {
      "<leader>dx",
      function()
        require("chainsaw").removeLogs()
      end,
      desc = "Remove Log Statements",
    },
  },
}
