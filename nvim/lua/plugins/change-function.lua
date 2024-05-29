return {
  "SleepySwords/change-function.nvim",
  event = "VeryLazy",
  keys = {
    {
      "<leader>cf",
      function()
        require("change-function").change_function()
      end,
    },
  },
}
