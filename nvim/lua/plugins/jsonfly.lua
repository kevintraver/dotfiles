return {
  "Myzel394/jsonfly.nvim",
  lazy = true,
  ft = "json",
  config = function()
    require("telescope").load_extension("jsonfly")
  end,
  keys = {
    {
      "<leader>sj",
      mode = "n",
      function()
        require("telescope").extensions.jsonfly.jsonfly({})
      end,
      ft = { "json" },
      desc = "Open json(fly)",
    },
  },
}
