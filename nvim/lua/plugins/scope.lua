return {
  "tiagovla/scope.nvim",
  event = "VeryLazy",
  config = function()
    require("scope").setup()
    require("telescope").load_extension("scope")
  end,
  keys = {
    {
      "<leader>bf",
      function()
        require("telescope").extensions.scope.buffers()
      end,
      desc = "Buffers",
    },
    {
      "<leader>fb",
      function()
        require("telescope").extensions.scope.buffers()
      end,
      desc = "Buffers",
    },
  },
}
