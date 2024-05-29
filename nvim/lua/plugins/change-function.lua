return {
  "SleepySwords/change-function.nvim",
  event = "VeryLazy",
  enabled = false,
  keys = {
    {
      "<leader>cf",
      function()
        require("change-function").change_function()
      end,
    },
  },
}
