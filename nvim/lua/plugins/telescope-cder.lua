return {
  "Zane-/cder.nvim",
  lazy = true,
  config = function()
    require("telescope").load_extension("cder")
  end,
  keys = {
    {
      "<leader>fd",
      function()
        require("telescope").extensions.cder.cder()
      end,
      desc = "Change Directory",
    },
  },
}
