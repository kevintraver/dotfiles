return {
  "MaximilianLloyd/adjacent.nvim",
  lazy = true,
  config = function()
    require("telescope").load_extension("adjacent")
  end,
  keys = {
    {
      "<leader>fa",
      function()
        require("telescope").extensions.adjacent.adjacent()
      end,
      desc = "Adjacent",
    },
  },
}
