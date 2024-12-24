return {
  "cenk1cenk2/jq.nvim",
  lazy = true,
  dependencies = {
    "grapp-dev/nui-components.nvim",
  },
  keys = {
    {
      "<leader>cJ",
      function()
        require("jq").run()
      end,
    },
  },
}
