return {
  "piersolenski/wtf.nvim",
  lazy = true,
  opts = {
    openai_model_id = "gpt-4-turbo",
    popup_type = "vertical",
  },
  keys = {
    {
      "<leader>xe",
      mode = { "n", "x" },
      function()
        require("wtf").ai()
      end,
      desc = "Explain diagnostic with AI",
    },
    {
      "<leader>xg",
      function()
        require("wtf").search()
      end,
      desc = "Search diagnostic with Google",
    },
  },
}
