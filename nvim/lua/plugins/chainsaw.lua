return {
  "chrisgrieser/nvim-chainsaw",
  config = true,
  keys = {
    {
      "<leader>lv",
      function()
        require("chainsaw").variableLog()
      end,
      desc = "Toggle chainsaw",
    },
    {
      "<leader>lm",
      function()
        require("chainsaw").messageLog()
      end,
      desc = "Toggle chainsaw",
    },
  },
}
